# Hackintosh HP Probook 4540s

This repo contains my configuration, kexts, etc of my working hackintosh MacOS Catalina 10.15

![Alt text](http://blazinglist.com/wp-content/uploads/2016/03/HP-ProBook-450-G3.jpg)

## Specs

**BIOS:** F.68 Rev.A

**CPU:** Intel Core i5 3210M @ 2.5 GHz (Ivy Bridge, 2 cores, 4 HT)

**GPU:** integrated Intel HD Graphics 4000

**Display:** 1366x768

**Wifi + BT:** BCM94352HMB

## Installation

***Notice: you have to generate your own SMBIOS/SerialNumber and SMBIOS/BoardSerialNumber.***

You can either install your hackintosh all by yourself or you can use my EFI folders to install and run the hackintosh.

To install hackintosh on your laptop, follow these 2 guides:

- [[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)
- [[Guide] HP ProBook/EliteBook/Zbook using Clover UEFI hotpatch](https://www.tonymacx86.com/threads/guide-hp-probook-elitebook-zbook-using-clover-uefi-hotpatch.261719/)

### Wifi + BT card

WIFI ONLY: Atheros AR9280/9285, Broadcom 4322/43224 (better OS X feature support)
WIFI+BT: AR5B195 (not recommended), Broadcom 43225HMB/4352HMB (better OS X feature support)

### How to install kext wifi + Bluetooth for MacOS Catalina 10.15

Since macOS Catalina, system partition is read-only, you have to mount it first as read-write:

```bash
sudo mount -uw /
```

Copy (`BrcmPatchRAM3.kext`, `BrcmFirmwareRepo.kext` and `BrcmBluetoothInjector.kext`) to `/Library/Extensions`.

To rebuild kext cache:

```bash
sudo chown -v -R root:wheel /System/Library/Extensions
sudo touch /System/Library/Extensions
sudo chmod -v -R 755 /Library/Extensions
sudo chown -v -R root:wheel /Library/Extensions
sudo touch /Library/Extensions
sudo kextcache -i /
```

## Credit
@RehabMan for all patch DSTD
@acidanthera for Audio , Wifi , Bluetooth

