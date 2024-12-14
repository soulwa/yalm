#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include "blake2b_kat.h"

extern int blake2b_jazz(void *out, uint64_t outlen, void *key, uint64_t keylen,
                        void *in, uint64_t inlen);
extern int blake2b_rfc(void *out, uint64_t outlen, void *key, uint64_t keylen,
                       void *in, uint64_t inlen);

void print_buf_as_hex(const uint8_t *buf, uint64_t len) {
  for (int i = 0; i < len; i++) {
    printf("%02X", buf[i]);
  }
  printf("\n");
}

int main() {
  uint8_t key[BLAKE2B_KEYBYTES];
  uint8_t buf[BLAKE2_KAT_LENGTH];
  size_t i;
  uint64_t rfc_ok = 0;
  uint64_t jazz_ok = 0;

  clock_t start, end;

  double total_rfc_time = 0;
  double total_jazz_time = 0;

  for (i = 0; i < BLAKE2B_KEYBYTES; i++) {
    key[i] = (uint8_t)i;
  }

  for (i = 0; i < BLAKE2_KAT_LENGTH; i++) {
    buf[i] = (uint8_t)i;
  }

  printf("testing RFC (reference implementation)\n");
  for (i = 0; i < BLAKE2_KAT_LENGTH; i++) {
    uint8_t hash[BLAKE2B_OUTBYTES];
    printf("in: ");
    print_buf_as_hex(buf, i);
    printf("key: ");
    print_buf_as_hex(key, BLAKE2B_KEYBYTES);
    start = clock();
    int res =
        blake2b_rfc(hash, BLAKE2B_OUTBYTES, key, BLAKE2B_KEYBYTES, buf, i);
    end = clock();
    total_rfc_time += ((double)(end - start)) / CLOCKS_PER_SEC;
    if (res == 0) {
      printf("exp: ");
      print_buf_as_hex(blake2b_keyed_kat[i], BLAKE2B_OUTBYTES);
      printf("out: ");
      print_buf_as_hex(hash, BLAKE2B_OUTBYTES);
      if (memcmp(hash, blake2b_keyed_kat[i], BLAKE2B_OUTBYTES) != 0) {
        printf("ERR\n");
      } else {
        printf("OK\n");
        rfc_ok += 1;
      }
    } else {
      printf("blake2b failed: invalid parameters\n");
    }
  }

  printf("testing jasmin implementation\n");
  for (i = 0; i < BLAKE2_KAT_LENGTH; i++) {
    uint8_t hash[BLAKE2B_OUTBYTES];
    printf("in: ");
    print_buf_as_hex(buf, i);
    printf("key: ");
    print_buf_as_hex(key, BLAKE2B_KEYBYTES);
    start = clock();
    int res =
        blake2b_jazz(hash, BLAKE2B_OUTBYTES, key, BLAKE2B_KEYBYTES, buf, i);
    end = clock();
    total_jazz_time += ((double)(end - start)) / CLOCKS_PER_SEC;
    if (res == 0) {
      printf("exp: ");
      print_buf_as_hex(blake2b_keyed_kat[i], BLAKE2B_OUTBYTES);
      printf("out: ");
      print_buf_as_hex(hash, BLAKE2B_OUTBYTES);
      if (memcmp(hash, blake2b_keyed_kat[i], BLAKE2B_OUTBYTES) != 0) {
        printf("ERR\n");
      } else {
        printf("OK\n");
        jazz_ok += 1;
      }
    } else {
      printf("blake2b failed: invalid parameters\n");
    }
  }

  if (rfc_ok == BLAKE2_KAT_LENGTH) {
    printf("RFC: ALL OK\n");
  } else {
    printf("RFC: %lu bad\n", BLAKE2_KAT_LENGTH - rfc_ok);
  }
  if (jazz_ok == BLAKE2_KAT_LENGTH) {
    printf("jasmin: ALL OK\n");
  } else {
    printf("jasmin: %lu bad\n", BLAKE2_KAT_LENGTH - jazz_ok);
  }

  printf("RFC time: %f sec\n", total_rfc_time);
  printf("jasmin time: %f sec\n", total_jazz_time);

  return 0;
}
