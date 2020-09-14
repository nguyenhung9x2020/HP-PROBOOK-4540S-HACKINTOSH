/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLrueuW5.aml, Mon Sep 14 16:40:35 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B8 (184)
 *     Revision         0x02
 *     Checksum         0x72
 *     OEM ID           "hack"
 *     OEM Table ID     "key102"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "key102", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "HPQOEM", 
                "RM,oem-table-id", 
                "ProBook-102"
            })
        }
    }
}

