/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLcJxCnS.aml, Mon Sep 14 19:22:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000C37 (3127)
 *     Revision         0x02
 *     Checksum         0x92
 *     OEM ID           "hack"
 *     OEM Table ID     "hack"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "hack", 0x00000000)
{
    External (_SB_.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.BAT0._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT0._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT0._HID, IntObj)    // (from opcode)
    External (_SB_.BAT0._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.BAT1._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT1._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT1._HID, IntObj)    // (from opcode)
    External (_SB_.BAT1._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LANC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LANC.XPRW, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECRG, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XREG, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX.XDSS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)    // (from opcode)
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Store ("IGPI overrides ig-platform-id or snb-platform-id", Debug)
            Store ("DGPU indicates whether discrete GPU should be disabled. bit0: startup, bit1: _PTS/_WAK", Debug)
            Store ("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
            Store ("LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer", Debug)
            Store ("SHUT enables shutdown fix. 1: disables _PTS code when Arg0==5", Debug)
            Store ("XPEE enables xHCI PMEE fix. 1: disable xHCI PMEE on _PTS when Arg0==5, 0: do not mess with XHC.PMEE", Debug)
        }

        Name (IGPI, Zero)
        Name (LMAX, Ones)
        Name (BUID, Zero)
        Name (DGPU, 0x03)
        Name (BKLT, One)
        Name (SHUT, Zero)
        Name (XPEE, Zero)
    }

    Scope (_SB.PCI0.PEGP.DGFX)
    {
        Method (RDSS, 1, NotSerialized)
        {
            If (LAnd (\_SB.PCI0.LPCB.EC.ECRG, CondRefOf (^XDSS)))
            {
                XDSS (Arg0)
            }
        }
    }

    Scope (RMCF)
    {
        Method (RMOF, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF))
            {
                \_SB.PCI0.PEGP.DGFX._OFF ()
            }
        }

        Method (RMON, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._ON))
            {
                \_SB.PCI0.PEGP.DGFX._ON ()
            }
        }

        Method (RDSS, 1, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.PEGP.DGFX.RDSS))
            {
                \_SB.PCI0.PEGP.DGFX.RDSS (Arg0)
            }
        }
    }

    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x11)
            {
                "Windows 2001", 
                "Windows 2001.1", 
                "Windows 2001 SP1", 
                "Windows 2001 SP2", 
                "Windows 2001 SP3", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Microsoft Windows NT", 
                "Microsoft Windows", 
                "Microsoft WindowsME: Millennium Edition"
            }
        If (_OSI ("Darwin"))
        {
            Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LAnd (LEqual (One, \RMCF.XPEE), LEqual (0x05, Arg0)))
        {
            If (CondRefOf (\_SB.PCI0.XHC.PMEE))
            {
                Store (Zero, \_SB.PCI0.XHC.PMEE)
            }
        }

        If (LAnd (\RMCF.SHUT, LEqual (0x05, Arg0)))
        {
            Return (Zero)
        }

        If (And (\RMCF.DGPU, 0x02))
        {
            \RMCF.RMON ()
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        Store (ZWAK (Arg0), Local0)
        If (And (\RMCF.DGPU, 0x02))
        {
            \RMCF.RMOF ()
        }

        Return (Local0)
    }

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (And (\RMCF.DGPU, One))
            {
                \RMCF.RMOF ()
            }
        }
    }

    Scope (_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ECR3, EmbeddedControl, Zero, 0xFF)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            XREG (Arg0, Arg1)
            If (LAnd (LAnd (LEqual (0x03, Arg0), LEqual (One, Arg1)), And (\RMCF.DGPU, One)))
            {
                \RMCF.RDSS (Zero)
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RMP2, PCI_Config, 0x02, 0x02)
        Field (RMP2, AnyAcc, NoLock, Preserve)
        {
            LDID,   16
        }

        Name (LPDL, Package (0x0D)
        {
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
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0x4B, 0x8C, 0x00, 0x00                         
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,8c4b"
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Match (LPDL, MEQ, LDID, MTR, Zero, Zero), Local0)
            If (LNotEqual (Ones, Local0))
            {
                Store (Match (LPDL, MEQ, Zero, MTR, Zero, Add (Local0, One)), Local0)
                Return (DerefOf (Index (LPDL, Add (Local0, One))))
            }

            Return (Package (0x00){})
        }
    }

    Method (GPRW, 2, NotSerialized)
    {
        If (LEqual (0x6D, Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        If (LEqual (0x0D, Arg0))
        {
            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Arg1))
    }

    Method (UPRW, 2, NotSerialized)
    {
        If (LEqual (0x6D, Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        If (LEqual (0x0D, Arg0))
        {
            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Arg1))
    }

    Method (_SB.PCI0.LANC._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
    {
        Store (\_SB.PCI0.LANC.XPRW (), Local0)
        Store (Zero, Index (Local0, One))
        Return (Local0)
    }

    Scope (_SB)
    {
        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (Zero, ^^BAT0._HID)
                Store (Zero, ^^BAT1._HID)
            }

            Method (CVWA, 3, NotSerialized)
            {
                If (Arg2)
                {
                    Divide (Multiply (Arg0, 0x03E8), Arg1, , Arg0)
                }

                Return (Arg0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Or (^^BAT0._STA (), ^^BAT1._STA ()))
            }

            Name (B0CO, Zero)
            Name (B1CO, Zero)
            Name (B0DV, Zero)
            Name (B1DV, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Store (^^BAT0._BST (), Local0)
                Store (^^BAT0._STA (), Local2)
                If (LEqual (0x1F, Local2))
                {
                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }
                }

                Store (^^BAT1._BST (), Local1)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (0x1F, Local3))
                {
                    Store (DerefOf (Index (Local1, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (Local1, Local0)
                    Store (Local3, Local2)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (DerefOf (Index (Local0, Zero)), Local4)
                    Store (DerefOf (Index (Local1, Zero)), Local5)
                    If (LOr (LEqual (Local4, 0x02), LEqual (Local5, 0x02)))
                    {
                        Store (0x02, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, One), LEqual (Local5, One)))
                    {
                        Store (One, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x05), LEqual (Local5, 0x05)))
                    {
                        Store (0x05, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x04), LEqual (Local5, 0x04)))
                    {
                        Store (0x04, Index (Local0, Zero))
                    }

                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (DerefOf (Index (Local0, 0x03)), DerefOf (Index (Local1, 0x03))), 0x02, , Index (Local0, 0x03))
                }

                Return (Local0)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Store (^^BAT0._BIF (), Local0)
                Store (^^BAT0._STA (), Local2)
                If (LEqual (0x1F, Local2))
                {
                    Store (DerefOf (Index (Local0, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }

                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }

                    Store (DerefOf (Index (Local0, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }
                }

                Store (^^BAT1._BIF (), Local1)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (0x1F, Local3))
                {
                    Store (DerefOf (Index (Local1, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local1, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local1, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (Local1, Local0)
                    Store (Local3, Local2)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (LNot (DerefOf (Index (Local0, Zero))), B0CO)
                    Store (LNot (DerefOf (Index (Local1, Zero))), B1CO)
                    Store (One, Index (Local0, Zero))
                    Store (DerefOf (Index (Local0, 0x04)), B0DV)
                    Store (DerefOf (Index (Local1, 0x04)), B1DV)
                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (B0DV, B1DV), 0x02, , Index (Local0, 0x04))
                    Add (CVWA (DerefOf (Index (Local0, 0x05)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x05)), B1DV, B1CO), Index (Local0, 0x05))
                    Add (CVWA (DerefOf (Index (Local0, 0x06)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x06)), B1DV, B1CO), Index (Local0, 0x06))
                }

                Return (Local0)
            }
        }
    }
}

