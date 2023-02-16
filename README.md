# dancer

# compile
  ```bash
    nim -c dancer
  ```
# compile and run
  ```bash
    nim r dancer
  ```
# compile for release
  ```bash
    nim c -d:release --opt:size --passL:-s dancer
  ```
  or use (if you have nim.cfg)
  ```bash
    nim c -r dancer
  ```
# further size reduction
  ```bash
    strip --strip-all
    upx --best dancer
  ```