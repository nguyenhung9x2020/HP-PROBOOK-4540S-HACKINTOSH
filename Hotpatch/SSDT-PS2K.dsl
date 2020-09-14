/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLSUrrXN.aml, Mon Sep 14 19:26:16 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000085 (133)
 *     Revision         0x02
 *     Checksum         0x56
 *     OEM ID           "hack"
 *     OEM Table ID     "PS2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PS2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF, Package (0x02)
        {
            "Synaptics TouchPad", 
            Package (0x02)
            {
                "DynamicEWMode", 
                ">y"
            }
        })
    }
}

