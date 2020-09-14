/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL6nN28A.aml, Mon Sep 14 19:24:07 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000D64 (3428)
 *     Revision         0x02
 *     Checksum         0xDC
 *     OEM ID           "hack"
 *     OEM Table ID     "_IGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_IGPU", 0x00000000)
{
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (RMCF.BKLT, IntObj)    // (from opcode)
    External (RMCF.FBTP, IntObj)    // (from opcode)
    External (RMCF.GRAN, IntObj)    // (from opcode)
    External (RMCF.IGPI, IntObj)    // (from opcode)
    External (RMCF.LEVW, IntObj)    // (from opcode)
    External (RMCF.LMAX, IntObj)    // (from opcode)

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (IGD4, PCI_Config, Zero, 0x14)
        Field (IGD4, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        Name (GIDL, Package (0x3C)
        {
            0x0116, 
            0x0126, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,snb-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x01, 0x00                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 3000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,os-info", 
                Buffer (0x14)
                {
                    /* 0000 */  0x30, 0x49, 0x01, 0x11, 0x11, 0x11, 0x08, 0x00,
                    /* 0008 */  0x00, 0x01, 0xF0, 0x1F, 0x01, 0x00, 0x00, 0x00,
                    /* 0010 */  0x10, 0x07, 0x00, 0x00                         
                }, 

                "AAPL00,DualLink", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                }
            }, 

            0x0166, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x66, 0x01                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A1E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4200"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A16, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4400"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0416, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4600"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A26, 
            0x0A2E, 
            0x0D26, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x161E, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5300"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1616, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5500"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1612, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1626, 
            0x162B, 
            0x1622, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x16                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x191E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 515"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x1916, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 520"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x191B, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 530"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x191D, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x19                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics P530"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x1B, 0x19, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x5916, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 620"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x5917, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x16, 0x59                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel UHD Graphics 620"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x16, 0x59, 0x00, 0x00                         
                }
            }, 

            0x5912, 
            0x591B, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 630"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x3E9B, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x59                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel UHD Graphics 630"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x1B, 0x59, 0x00, 0x00                         
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (CondRefOf (\RMCF.IGPI))
            {
                If (LEqual (Ones, \RMCF.IGPI))
                {
                    Return (Zero)
                }
            }

            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Match (GIDL, MEQ, GDID, MTR, Zero, Zero), Local0)
            If (LEqual (Ones, Local0))
            {
                Return (Package (0x00){})
            }

            Store (DerefOf (Index (GIDL, Add (Match (GIDL, MEQ, Zero, MTR, Zero, Add (Local0, One)), One))), Local0)
            If (CondRefOf (\RMCF.IGPI))
            {
                If (LNotEqual (Zero, \RMCF.IGPI))
                {
                    CreateDWordField (DerefOf (Index (Local0, One)), Zero, IGPI)
                    Store (\RMCF.IGPI, IGPI)
                }
            }

            Return (Local0)
        }
    }

    Device (_SB.PCI0.IMEI)
    {
        Name (_ADR, 0x00160000)  // _ADR: Address
        OperationRegion (MMD4, PCI_Config, 0x02, 0x02)
        Field (MMD4, AnyAcc, NoLock, Preserve)
        {
            MDID,   16
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (^^IGPU.GDID, Local1)
            Store (MDID, Local2)
            If (LAnd (LEqual (0x0166, Local1), LEqual (0x1C3A, Local2)))
            {
                Return (Package (0x02)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x3A, 0x1E, 0x00, 0x00                         
                    }
                })
            }
            ElseIf (LAnd (LOr (LEqual (0x0116, Local1), LEqual (0x0126, Local1)), LEqual (0x1E3A, Local2)))
            {
                Return (Package (0x02)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x3A, 0x1C, 0x00, 0x00                         
                    }
                })
            }

            Return (Package (0x00){})
        }
    }

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (RMP3, PCI_Config, Zero, 0x14)
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (^RMP3, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        OperationRegion (RMB1, SystemMemory, And (BAR1, 0xFFFFFFFFFFFFFFF0), 0x000E1184)
        Field (RMB1, AnyAcc, Lock, Preserve)
        {
            Offset (0x48250), 
            LEV2,   32, 
            LEVL,   32, 
            Offset (0x70040), 
            P0BL,   32, 
            Offset (0xC2000), 
            GRAN,   32, 
            Offset (0xC8250), 
            LEVW,   32, 
            LEVX,   32, 
            LEVD,   32, 
            Offset (0xE1180), 
            PCHL,   32
        }

        Method (INI1, 1, NotSerialized)
        {
            If (LEqual (Zero, And (0x02, Arg0)))
            {
                Store (0xC0000000, Local5)
                If (CondRefOf (\RMCF.LEVW))
                {
                    If (LNotEqual (Ones, \RMCF.LEVW))
                    {
                        Store (\RMCF.LEVW, Local5)
                    }
                }

                Store (Local5, ^LEVW)
            }

            If (And (0x04, Arg0))
            {
                If (CondRefOf (\RMCF.GRAN))
                {
                    Store (\RMCF.GRAN, ^GRAN)
                }
                Else
                {
                    Store (Zero, ^GRAN)
                }
            }
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, Local4)
            If (CondRefOf (\RMCF.BKLT))
            {
                Store (\RMCF.BKLT, Local4)
            }

            If (LNot (And (One, Local4)))
            {
                Return (Zero)
            }

            Store (^GDID, Local0)
            Store (Ones, Local2)
            If (CondRefOf (\RMCF.LMAX))
            {
                Store (\RMCF.LMAX, Local2)
            }

            Store (Zero, Local3)
            If (CondRefOf (\RMCF.FBTP))
            {
                Store (\RMCF.FBTP, Local3)
            }

            If (LOr (LEqual (One, Local3), LNotEqual (Ones, Match (Package (0x10)
                                {
                                    0x010B, 
                                    0x0102, 
                                    0x0106, 
                                    0x1106, 
                                    0x1601, 
                                    0x0116, 
                                    0x0126, 
                                    0x0112, 
                                    0x0122, 
                                    0x0152, 
                                    0x0156, 
                                    0x0162, 
                                    0x0166, 
                                    0x016A, 
                                    0x46, 
                                    0x42
                                }, MEQ, Local0, MTR, Zero, Zero))))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0x0710, Local2)
                }

                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Divide (Multiply (^LEVL, Local2), Local1, , Local0)
                    ShiftLeft (Local2, 0x10, Local3)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local3, ^LEVX)
                        Store (Local0, ^LEVL)
                    }
                    Else
                    {
                        Store (Local0, ^LEVL)
                        Store (Local3, ^LEVX)
                    }
                }
            }
            ElseIf (LOr (LEqual (0x03, Local3), LNotEqual (Ones, Match (Package (0x04)
                                {
                                    0x3E9B, 
                                    0x3EA5, 
                                    0x3E92, 
                                    0x3E91
                                }, MEQ, Local0, MTR, Zero, Zero))))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0xFFFF, Local2)
                }

                INI1 (Local4)
                Store (^LEVX, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Divide (Multiply (^LEVD, Local2), Local1, , Local0)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local2, ^LEVX)
                        Store (Local0, ^LEVD)
                    }
                    Else
                    {
                        Store (Local0, ^LEVD)
                        Store (Local2, ^LEVX)
                    }
                }
            }
            Else
            {
                If (LEqual (Ones, Local2))
                {
                    If (LNotEqual (Ones, Match (Package (0x16)
                                    {
                                        0x0D26, 
                                        0x0A26, 
                                        0x0D22, 
                                        0x0412, 
                                        0x0416, 
                                        0x0A16, 
                                        0x0A1E, 
                                        0x0A1E, 
                                        0x0A2E, 
                                        0x041E, 
                                        0x041A, 
                                        0x0BD1, 
                                        0x0BD2, 
                                        0x0BD3, 
                                        0x1606, 
                                        0x160E, 
                                        0x1616, 
                                        0x161E, 
                                        0x1626, 
                                        0x1622, 
                                        0x1612, 
                                        0x162B
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Store (0x0AD9, Local2)
                    }
                    Else
                    {
                        Store (0x056C, Local2)
                    }
                }

                INI1 (Local4)
                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Or (Divide (Multiply (And (^LEVX, 0xFFFF), Local2), Local1, ), ShiftLeft (Local2, 0x10), Local0)
                    Store (Local0, ^LEVX)
                }
            }

            If (LEqual (Local2, 0x0710))
            {
                Store (0x0E, _UID)
            }
            ElseIf (LEqual (Local2, 0x0AD9))
            {
                Store (0x0F, _UID)
            }
            ElseIf (LEqual (Local2, 0x056C))
            {
                Store (0x10, _UID)
            }
            ElseIf (LEqual (Local2, 0x07A1))
            {
                Store (0x11, _UID)
            }
            ElseIf (LEqual (Local2, 0x1499))
            {
                Store (0x12, _UID)
            }
            ElseIf (LEqual (Local2, 0xFFFF))
            {
                Store (0x13, _UID)
            }
            Else
            {
                Store (0x63, _UID)
            }
        }
    }
}

