# Mac OS X 10.15.X FOR HP PROBOOK 4540S

<img align="right" src="https://dortania.github.io/docs/latest/Logos/Logo-.png" alt="Critter" width="200">

* Bootloader: [OpenCore 0.6.1](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.1)
* Please note that although this EFI work for my laptop (almost) perfect, it may damage your hardward (especcially because I don't use the pre-built ACPI), if you try this with out configurating into your laptop, I DO NOT have responsible for this so this should be used for consulting ONLY. You have been warned.

# Specs
```
Model              HP Probook 4540s
Mainboard          Mobile Intel HM76 chipset
CPU                Intel® Core i5 processors, Dual Core (3-MB L3 cache, 35W)
Memory             8GB DDR4 1333MHz (4G+4G)
Graphics           Intel HD Graphics 4000
Audio              IDT 92HD87
Ethernet           Realtek RTL8151FH-CG 10/100/1000
Wi-Fi              Broadcom BCM94352HMB
Monitor            HD 1366x768
BIOS Verison       F.68 Rev.A
macOS Verison      11.0 BigSur
OpenCore Version   0.6.1
```
## What working?  
* Battery Indicator
* Internal Speaker + Headphone + HDMI + HDMI Sounds
* Ethernet + WiFi + Bluetooth
* USB
* Trackpad
* Brightness, FN Brightness
* Sleep + Wake + Shutdown + Restart
* Cpu Power Management
* IGPU / QE/CI working good

## What don't work?  
* iService (need to call Apple)

# Thanks to:
## **Developers of OpenCore**:
* [al3xtjames](https://github.com/al3xtjames)
* [Andrey1970AppleLife](https://github.com/Andrey1970AppleLife)
* [Download-Fritz](https://github.com/Download-Fritz)
* [Goldfish64](https://github.com/Goldfish64)
* [nms42](https://github.com/nms42)
* [PMHeart](https://github.com/PMHeart)
* [savvamitrofanov](https://github.com/savvamitrofanov)
* [vit9696](https://github.com/vit9696)  
For their wonderful, powerful [OpenCore bootloader](https://github.com/acidanthera/OpenCorePkg)
## **Guide Writer**
* [CorpNewt](https://github.com/corpnewt)
* [Midi](https://github.com/midi1996)
* [DhinakG](https://github.com/dhinakg)
* [Khronokernel](https://github.com/khronokernel)
* [and the rest of the dortania team](https://github.com/dortania)  
For their best, extremly easy to understand [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/) which help me almost everything in setting my EFI

## Credits
@RehabMan for all add in patch hp probook 4530s/4540s
@chriss111 for theme