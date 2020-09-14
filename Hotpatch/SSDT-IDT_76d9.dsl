/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLV4ZpdA.aml, Mon Sep 14 19:23:28 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000FD (253)
 *     Revision         0x02
 *     Checksum         0x8B
 *     OEM ID           "hack"
 *     OEM Table ID     "IDT_76d9"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "IDT_76d9", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "layout-id", 
            Buffer (0x04)
            {
                 0x0D, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "PinConfigurations", 
            Buffer (Zero){}
        })
    }

    Name (_SB.PCI0.HDEF.RMCF, Package (0x04)
    {
        "CodecCommander", 
        Package (0x02)
        {
            "Disable", 
            ">y"
        }, 

        "CodecCommanderPowerHook", 
        Package (0x02)
        {
            "Disable", 
            ">y"
        }
    })
}

