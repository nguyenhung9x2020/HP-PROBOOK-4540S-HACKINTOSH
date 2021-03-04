/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL7Masjt.aml, Thu Mar  4 15:10:03 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000186 (390)
 *     Revision         0x02
 *     Checksum         0xCC
 *     OEM ID           "hack"
 *     OEM Table ID     "_LPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_LPC", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RMP0, PCI_Config, 0x02, 0x02)
        Field (RMP0, AnyAcc, NoLock, Preserve)
        {
            LDID,   16
        }

        Name (LPDL, Package (0x19)
        {
            0x1E49, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0x42, 0x1E, 0x00, 0x00                           // B...
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,1e42"
                }
            }, 

            0x8C46, 
            0x8C49, 
            0x8C4A, 
            0x8C4C, 
            0x8C4E, 
            0x8C4F, 
            0x8C50, 
            0x8C52, 
            0x8C54, 
            0x8C56, 
            0x8C5C, 
            0x8CC3, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0x4B, 0x8C, 0x00, 0x00                           // K...
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,8c4b"
                }
            }, 

            0x8CC6, 
            0x9D48, 
            0x9D58, 
            0xA14E, 
            0xA150, 
            0xA2C5, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0xC1, 0x9C, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cc1"
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Match (LPDL, MEQ, ^LDID, MTR, Zero, Zero)
            If ((Ones != Local0))
            {
                Local0 = Match (LPDL, MEQ, Zero, MTR, Zero, (Local0 + One))
                Return (DerefOf (LPDL [(Local0 + One)]))
            }

            Return (Package (0x00){})
        }
    }
}

