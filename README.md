# Motorola moto g35 5G (manila) — experimental TWRP tree

Initial recovery-only tree for the Motorola moto g35 5G (`manila`), prepared from stock Android 16 `boot-gki.img` and `vendor_boot.img` headers.

## Verified stock image facts
- `boot-gki.img`: Android boot header v4, kernel 47,577,600 bytes, ramdisk size 0.
- `vendor_boot.img`: vendor boot header v4, page size 4096, vendor ramdisk 35,504,379 bytes, DTB 180,509 bytes.
- vendor boot offsets: kernel `0x8000`, ramdisk `0x05400000`, tags `0x100`, DTB `0x01f00000`.
- Stock layout is GKI/vendor_boot-oriented; recovery resources should be built into `vendor_boot` rather than a standalone recovery partition.

## Intended cloud-builder values
- Manifest branch: `twrp-14.1`
- Custom Recovery Tree: URL of this repository
- Custom Recovery Tree Branch: repository default branch (usually `main`)
- DEVICE_PATH: `device/motorola/manila`
- DEVICE_NAME: `manila`
- Build target: `vendorbootimage` / vendor_boot where supported by the workflow

## Important
This is an **initial experimental tree**, not a tested recovery release. Do not flash a produced image merely because compilation succeeds. First inspect the build log and output image, and keep the exact stock `vendor_boot.img` available for restoration.

The initial fstab and some board/platform assumptions still need runtime validation. Data decryption, touch, USB/MTP, brightness and vendor modules may need follow-up fixes after a safe first-boot test.
