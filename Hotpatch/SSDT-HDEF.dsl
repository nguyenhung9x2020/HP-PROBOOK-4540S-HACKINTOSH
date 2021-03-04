/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLk6nnMq.aml, Thu Mar  4 15:11:12 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001CA (458)
 *     Revision         0x02
 *     Checksum         0x46
 *     OEM ID           "hack"
 *     OEM Table ID     "_HDEF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_HDEF", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (RMCF.AUDL, IntObj)
    External (RMCF.DAUD, IntObj)
    External (RMDA, IntObj)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (CondRefOf (\RMCF.AUDL))
        {
            If ((Ones == \RMCF.AUDL))
            {
                Return (Zero)
            }
        }

        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x08)
            {
                "layout-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x00                           // ....
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "no-controller-patch", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                           // ....
                }, 

                "PinConfigurations", 
                Buffer (Zero){}
            }
        If (CondRefOf (\RMCF.AUDL))
        {
            CreateDWordField (DerefOf (Local0 [One]), Zero, AUDL)
            AUDL = \RMCF.AUDL /* External reference */
        }

        Local1 = Zero
        If (CondRefOf (\RMDA))
        {
            Local1 = One
        }

        If (CondRefOf (\RMCF.DAUD))
        {
            If ((Zero == \RMCF.DAUD))
            {
                Local1 = One
            }
        }

        If (Local1)
        {
            Local0 [0x02] = "#hda-gfx"
        }

        Return (Local0)
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

