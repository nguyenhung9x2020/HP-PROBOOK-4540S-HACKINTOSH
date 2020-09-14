/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL8rav8d.aml, Mon Sep 14 19:20:40 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000119 (281)
 *     Revision         0x02
 *     Checksum         0x85
 *     OEM ID           "hack"
 *     OEM Table ID     "EH02"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "EH02", 0x00000000)
{
    External (_SB_.PCI0.EH02, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.EH02._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0C)
        {
            "subsystem-id", 
            Buffer (0x04)
            {
                 0x70, 0x72, 0x00, 0x00                         
            }, 

            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                         
            }, 

            "AAPL,current-available", 
            Buffer (0x04)
            {
                 0x34, 0x08, 0x00, 0x00                         
            }, 

            "AAPL,current-extra", 
            Buffer (0x04)
            {
                 0x98, 0x08, 0x00, 0x00                         
            }, 

            "AAPL,current-extra-in-sleep", 
            Buffer (0x04)
            {
                 0x40, 0x06, 0x00, 0x00                         
            }, 

            "AAPL,max-port-current-in-sleep", 
            Buffer (0x04)
            {
                 0x34, 0x08, 0x00, 0x00                         
            }
        })
    }
}

