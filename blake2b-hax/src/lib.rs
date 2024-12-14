#[inline(always)]
fn rotr64(x: u64, y: u64) -> u64 {
    (x >> y) ^ (x << (64 - y))
}

#[derive(Clone, Debug)]
struct Blake2bCtx {
    b: [u8; 128],
    h: [u64; 8],
    t: [u64; 2],
    c: u64,
    outlen: u64,
}

impl Blake2bCtx {
    fn update_c(self, c: u64) -> Self {
        Blake2bCtx {
            b: self.b,
            h: self.h,
            t: self.t,
            c,
            ..self
        }
    }
}

static BLAKE2B_IV: [u64; 8] = [
    0x6a09e667f3bcc908,
    0xbb67ae8584caa73b,
    0x3c6ef372fe94f82b,
    0xa54ff53a5f1d36f1,
    0x510e527fade682d1,
    0x9b05688c2b3e6c1f,
    0x1f83d9abfb41bd6b,
    0x5be0cd19137e2179,
];

#[inline(always)]
fn G(v: [u64; 16], a: usize, b: usize, c: usize, d: usize, x: u64, y: u64) -> (u64, u64, u64, u64) {
    let (v_a, v_b, v_c, v_d) = (v[a], v[b], v[c], v[d]);

    let v_a = v_a.wrapping_add(v_b).wrapping_add(x);
    let v_d = rotr64(v_d ^ v_a, 32);
    let v_c = v_c.wrapping_add(v_d);
    let v_b = rotr64(v_b ^ v_c, 24);

    let v_a = v_a.wrapping_add(v_b).wrapping_add(y);
    let v_d = rotr64(v_d ^ v_a, 16);
    let v_c = v_c.wrapping_add(v_d);
    let v_b = rotr64(v_b ^ v_c, 63);

    (v_a, v_b, v_c, v_d)
}

// unrolled version of mix
// currently hacspec's SSProve backend doesn't allow for reasoning
// about reassigning variables (eg. mutation)
fn mix(v: [u64; 16], m: [u64; 16]) -> [u64; 16] {
    let sigma: [[usize; 16]; 12] = [
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
        [14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3],
        [11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4],
        [7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8],
        [9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13],
        [2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9],
        [12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11],
        [13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10],
        [6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5],
        [10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
        [14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3],
    ];

    // 0
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[0][0]], m[sigma[0][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[0][2]], m[sigma[0][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[0][4]], m[sigma[0][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[0][6]], m[sigma[0][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[0][8]], m[sigma[0][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[0][10]], m[sigma[0][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[0][12]], m[sigma[0][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[0][14]], m[sigma[0][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 1
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[1][0]], m[sigma[1][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[1][2]], m[sigma[1][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[1][4]], m[sigma[1][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[1][6]], m[sigma[1][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[1][8]], m[sigma[1][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[1][10]], m[sigma[1][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[1][12]], m[sigma[1][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[1][14]], m[sigma[1][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 2
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[2][0]], m[sigma[2][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[2][2]], m[sigma[2][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[2][4]], m[sigma[2][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[2][6]], m[sigma[2][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[2][8]], m[sigma[2][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[2][10]], m[sigma[2][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[2][12]], m[sigma[2][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[2][14]], m[sigma[2][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 3
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[3][0]], m[sigma[3][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[3][2]], m[sigma[3][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[3][4]], m[sigma[3][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[3][6]], m[sigma[3][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[3][8]], m[sigma[3][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[3][10]], m[sigma[3][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[3][12]], m[sigma[3][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[3][14]], m[sigma[3][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 4
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[4][0]], m[sigma[4][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[4][2]], m[sigma[4][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[4][4]], m[sigma[4][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[4][6]], m[sigma[4][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[4][8]], m[sigma[4][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[4][10]], m[sigma[4][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[4][12]], m[sigma[4][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[4][14]], m[sigma[4][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 5
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[5][0]], m[sigma[5][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[5][2]], m[sigma[5][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[5][4]], m[sigma[5][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[5][6]], m[sigma[5][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[5][8]], m[sigma[5][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[5][10]], m[sigma[5][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[5][12]], m[sigma[5][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[5][14]], m[sigma[5][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 6
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[6][0]], m[sigma[6][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[6][2]], m[sigma[6][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[6][4]], m[sigma[6][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[6][6]], m[sigma[6][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[6][8]], m[sigma[6][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[6][10]], m[sigma[6][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[6][12]], m[sigma[6][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[6][14]], m[sigma[6][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 7
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[7][0]], m[sigma[7][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[7][2]], m[sigma[7][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[7][4]], m[sigma[7][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[7][6]], m[sigma[7][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[7][8]], m[sigma[7][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[7][10]], m[sigma[7][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[7][12]], m[sigma[7][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[7][14]], m[sigma[7][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 8
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[8][0]], m[sigma[8][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[8][2]], m[sigma[8][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[8][4]], m[sigma[8][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[8][6]], m[sigma[8][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[8][8]], m[sigma[8][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[8][10]], m[sigma[8][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[8][12]], m[sigma[8][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[8][14]], m[sigma[8][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 9
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[9][0]], m[sigma[9][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[9][2]], m[sigma[9][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[9][4]], m[sigma[9][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[9][6]], m[sigma[9][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[9][8]], m[sigma[9][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[9][10]], m[sigma[9][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[9][12]], m[sigma[9][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[9][14]], m[sigma[9][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 10
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[10][0]], m[sigma[10][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[10][2]], m[sigma[10][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[10][4]], m[sigma[10][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[10][6]], m[sigma[10][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[10][8]], m[sigma[10][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[10][10]], m[sigma[10][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[10][12]], m[sigma[10][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[10][14]], m[sigma[10][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    // 11
    let (v0, v4, v8, v12) = G(v, 0, 4, 8, 12, m[sigma[11][0]], m[sigma[11][1]]);
    let (v1, v5, v9, v13) = G(v, 1, 5, 9, 13, m[sigma[11][2]], m[sigma[11][3]]);
    let (v2, v6, v10, v14) = G(v, 2, 6, 10, 14, m[sigma[11][4]], m[sigma[11][5]]);
    let (v3, v7, v11, v15) = G(v, 3, 7, 11, 15, m[sigma[11][6]], m[sigma[11][7]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];
    let (v0, v5, v10, v15) = G(v, 0, 5, 10, 15, m[sigma[11][8]], m[sigma[11][9]]);
    let (v1, v6, v11, v12) = G(v, 1, 6, 11, 12, m[sigma[11][10]], m[sigma[11][11]]);
    let (v2, v7, v8, v13) = G(v, 2, 7, 8, 13, m[sigma[11][12]], m[sigma[11][13]]);
    let (v3, v4, v9, v14) = G(v, 3, 4, 9, 14, m[sigma[11][14]], m[sigma[11][15]]);
    let v = [
        v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15,
    ];

    v
}

fn blake2b_compress(ctx: Blake2bCtx, last: bool) -> Blake2bCtx {
    let v = (0..16)
        .into_iter()
        .map(|idx| {
            if idx < 8 {
                ctx.h[idx]
            } else if idx >= 8 && idx <= 11 {
                BLAKE2B_IV[idx - 8]
            } else if idx == 12 {
                BLAKE2B_IV[idx - 8] ^ ctx.t[0]
            } else if idx == 13 {
                BLAKE2B_IV[idx - 8] ^ ctx.t[1]
            } else if idx == 14 && last {
                !BLAKE2B_IV[idx - 8]
            } else {
                BLAKE2B_IV[idx - 8] // 14, 15
            }
        })
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();
    let m = (0..16)
        .into_iter()
        .map(|idx| u64::from_le_bytes(ctx.b[idx * 8..idx * 8 + 8].try_into().unwrap()))
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();

    let v = mix(v, m);

    let h = ctx
        .h
        .iter()
        .enumerate()
        .map(|(idx, val)| val ^ v[idx] ^ v[idx + 8])
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();
    Blake2bCtx {
        b: ctx.b,
        h,
        t: ctx.t,
        c: ctx.c,
        outlen: ctx.outlen,
    }
}

fn blake2b_update(ctx: Blake2bCtx, input: &[u8]) -> Blake2bCtx {
    input.iter().fold(ctx, |sum, byte| {
        let sum = if sum.c == 128 {
            let t0 = sum.t[0].wrapping_add(sum.c);
            let t1 = if t0 < sum.c {
                sum.t[1].wrapping_add(1)
            } else {
                sum.t[1]
            };
            blake2b_compress(
                Blake2bCtx {
                    b: sum.b,
                    h: sum.h,
                    t: [t0, t1],
                    c: 0,
                    outlen: sum.outlen,
                },
                false,
            )
        } else {
            sum
        };
        let b = sum
            .b
            .iter()
            .enumerate()
            .map(|(i, b)| if i == sum.c as usize { *byte } else { *b })
            .collect::<Vec<_>>()
            .try_into()
            .unwrap();
        Blake2bCtx {
            b,
            h: sum.h,
            t: sum.t,
            c: sum.c + 1,
            outlen: sum.outlen,
        }
    })
}

fn blake2b_init(outlen: u64, key: Option<&[u8]>) -> Result<Blake2bCtx, i32> {
    if outlen == 0 || outlen > 64 || key.map_or(false, |k| k.len() > 64) {
        return Err(-1);
    }

    let h: [u64; 8] = BLAKE2B_IV;

    let keylen = key.map_or(0, |k| k.len() as u64);

    let h0 = h[0] ^ 0x01010000 ^ (keylen << 8) ^ outlen;
    let h = [h0, h[1], h[2], h[3], h[4], h[5], h[6], h[7]];

    let b = [0; 128];

    let ctx = Blake2bCtx {
        b,
        h,
        t: [0; 2],
        c: 0,
        outlen,
    };

    if let Some(k) = key {
        let ctx = blake2b_update(ctx, k);
        let c = 128;
        Ok(ctx.update_c(c))
    } else {
        Ok(ctx)
    }
}

fn blake2b_final(ctx: Blake2bCtx) -> Vec<u8> {
    let t0 = ctx.t[0].wrapping_add(ctx.c);
    let t1 = if t0 < ctx.c {
        ctx.t[1].wrapping_add(1)
    } else {
        ctx.t[1]
    };

    // should use a refinement type here, perhaps?
    let b: [u8; 128] = (0..128)
        .into_iter()
        .map(|i| if i < ctx.c { ctx.b[i as usize] } else { 0 })
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();
    let c = 128;
    let ctx = Blake2bCtx {
        b,
        h: ctx.h,
        t: [t0, t1],
        c,
        outlen: ctx.outlen,
    };
    let ctx = blake2b_compress(ctx, true);

    (0..ctx.outlen)
        .map(|i| (ctx.h[i as usize >> 3] >> (8 * (i & 7))) as u8)
        .collect()
}

pub fn blake2b_hax(outlen: usize, key: Option<&[u8]>, input: &[u8]) -> Result<Vec<u8>, i32> {
    let ctx = blake2b_init(outlen as u64, key)?;
    let ctx = blake2b_update(ctx, input);
    let result = blake2b_final(ctx);
    Ok(result)
}
