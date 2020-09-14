/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLH2rrKz.aml, Mon Sep 14 16:37:59 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012B6 (4790)
 *     Revision         0x02
 *     Checksum         0x62
 *     OEM ID           "hack"
 *     OEM Table ID     "batt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "batt", 0x00000000)
{
    External (_SB_.NBST, PkgObj)    // (from opcode)
    External (_SB_.NDBS, PkgObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BATN, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BATP, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BRCC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BRCV, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BSEL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BST_, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BSTA, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BTDR, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BTMX, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.CRZN, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECMX, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECRG, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GACS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GBMF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GBSS, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GCTL, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GDCH, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GDNM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.IDIS, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.INAC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.INCH, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ITL1, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.NDCB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.NGBF, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.NGBT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.NLB1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.NLB2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.PSSB, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.TEMP, FieldUnitObj)    // (from opcode)
    External (BATN, IntObj)    // Warning: Unknown object
    External (BRCC, IntObj)    // Warning: Unknown object
    External (BRCV, IntObj)    // Warning: Unknown object
    External (BST_, IntObj)    // Warning: Unknown object
    External (ECRG, IntObj)    // Warning: Unknown object
    External (NDBS, IntObj)    // Warning: Unknown object
    External (NGBF, IntObj)    // Warning: Unknown object
    External (NGBT, IntObj)    // Warning: Unknown object
    External (NLB1, IntObj)    // Warning: Unknown object
    External (NLB2, IntObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ECR2, EmbeddedControl, Zero, 0xFF)
        Field (ECR2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x87), 
            Offset (0x88), 
            Offset (0x89), 
            BDC0,   8, 
            BDC1,   8, 
            Offset (0x8D), 
            BFC0,   8, 
            BFC1,   8, 
            RTE0,   8, 
            RTE1,   8, 
            Offset (0x92), 
            BME0,   8, 
            BME1,   8, 
            Offset (0x95), 
            BDV0,   8, 
            BDV1,   8, 
            BCX0,   8, 
            BCX1,   8, 
            Offset (0x9B), 
            ATE0,   8, 
            ATE1,   8, 
            BPR0,   8, 
            BPR1,   8, 
            BCR0,   8, 
            BCR1,   8, 
            BRC0,   8, 
            BRC1,   8, 
            BCC0,   8, 
            BCC1,   8, 
            BPV0,   8, 
            BPV1,   8, 
            BCA0,   8, 
            BCA1,   8, 
            BCB0,   8, 
            BCB1,   8, 
            BCP0,   8, 
            BCP1,   8, 
            Offset (0xAF), 
            ATF0,   8, 
            ATF1,   8, 
            Offset (0xB3), 
            AXC0,   8, 
            AXC1,   8, 
            Offset (0xB6), 
                ,   1, 
                ,   1, 
                ,   2, 
            Offset (0xB7), 
            BST0,   8, 
            BST1,   8, 
            Offset (0xC9), 
            BSN0,   8, 
            BSN1,   8, 
            BDA0,   8, 
            BDA1,   8, 
            Offset (0xE0), 
            CBT0,   8, 
            CBT1,   8
        }

        Method (ITLB, 0, NotSerialized)
        {
            ITL1 ()
        }

        Method (BTIF, 1, Serialized)
        {
            ShiftLeft (One, Arg0, Local7)
            BTDR (One)
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            Store (NGBF, Local0)
            Release (BTMX)
            If (LEqual (And (Local0, Local7), Zero))
            {
                Return (Zero)
            }

            Store (NDBS, Index (NBST, Arg0))
            Acquire (BTMX, 0xFFFF)
            Or (NGBT, Local7, NGBT)
            Release (BTMX)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg0, BSEL)
                Store (B1B2 (BFC0, BFC1), Local0)
                Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                Store (B1B2 (BDV0, BDV1), Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                Store (NLB1, Index (DerefOf (Index (NBTI, Arg0)), 0x05))
                Store (NLB2, Index (DerefOf (Index (NBTI, Arg0)), 0x06))
                Store (B1B2 (BSN0, BSN1), Local0)
                Store (B1B2 (BDA0, BDA1), Local1)
                Store (B1B2 (BCC0, BCC1), Index (DerefOf (Index (NBTI, Arg0)), 0x0D))
                Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
                Store (0x05, \_SB.PCI0.LPCB.EC.CRZN)
                Store (\_SB.PCI0.LPCB.EC.TEMP, Local2)
                Release (\_SB.PCI0.LPCB.EC.ECMX)
                Add (Multiply (Local2, 0x0A), 0x0AAC, Local2)
                Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x0E))
            }

            Release (ECMX)
            Store (GBSS (Local0, Local1), Local2)
            Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x0A))
            Acquire (BTMX, 0xFFFF)
            And (NGBF, Not (Local7), NGBF)
            Release (BTMX)
            Return (Zero)
        }

        Method (BTST, 2, Serialized)
        {
            ShiftLeft (One, Arg0, Local7)
            BTDR (One)
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Store (Package (0x04)
                    {
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    }, Index (NBST, Arg0))
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            If (Arg1)
            {
                Store (0xFF, NGBT)
            }

            Store (NGBT, Local0)
            Release (BTMX)
            If (LEqual (And (Local0, Local7), Zero))
            {
                Return (Zero)
            }

            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg0, BSEL)
                Store (BST, Local0)
                Store (B1B2 (BPR0, BPR1), Local3)
                Store (B1B2 (BRC0, BRC1), Index (DerefOf (Index (NBST, Arg0)), 0x02))
                Store (B1B2 (BPV0, BPV1), Index (DerefOf (Index (NBST, Arg0)), 0x03))
            }

            Release (ECMX)
            If (LEqual (GACS (), One))
            {
                And (0xFFFFFFFFFFFFFFFE, Local0, Local0)
            }
            Else
            {
                And (0xFFFFFFFFFFFFFFFD, Local0, Local0)
            }

            If (And (Local0, One))
            {
                Acquire (BTMX, 0xFFFF)
                Store (Local7, NDCB)
                Release (BTMX)
            }

            Store (Local0, Index (DerefOf (Index (NBST, Arg0)), Zero))
            If (And (Local0, One))
            {
                If (LOr (LLess (Local3, 0x0190), LGreater (Local3, 0x1964)))
                {
                    Store (DerefOf (Index (DerefOf (Index (NBST, Arg0)), One)), Local5)
                    If (LOr (LLess (Local5, 0x0190), LGreater (Local5, 0x1964)))
                    {
                        Store (0x0D7A, Local3)
                    }
                    Else
                    {
                        Store (Local5, Local3)
                    }
                }
            }
            ElseIf (LEqual (And (Local0, 0x02), Zero))
            {
                Store (Zero, Local3)
            }

            Store (Local3, Index (DerefOf (Index (NBST, Arg0)), One))
            Acquire (BTMX, 0xFFFF)
            And (NGBT, Not (Local7), NGBT)
            Release (BTMX)
            Return (Zero)
        }

        Method (SBTC, 3, NotSerialized)
        {
            Store ("Enter SetBatteryControl", Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg2, Local0)
                Store (Local0, Debug)
                Store (Package (0x02)
                    {
                        0x06, 
                        Zero
                    }, Local4)
                Store (Zero, Local1)
                Store (Zero, Local2)
                Store (DerefOf (Index (Local0, 0x10)), Local1)
                If (LEqual (Local1, Zero))
                {
                    Store ("battery 0", Debug)
                    If (And (BATP, One))
                    {
                        Store (DerefOf (Index (Local0, 0x11)), Local2)
                        If (LEqual (Local2, Zero))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Zero, AXC0)
                            Store (Zero, AXC1)
                            Store (One, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, One))
                        {
                            Store (Zero, INAC)
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, AXC0)
                            Store (Zero, AXC1)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x02))
                        {
                            Store (One, INAC)
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x03))
                        {
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, INAC)
                            Store (0xFA, AXC0)
                            Store (Zero, AXC1)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x04))
                        {
                            Store (0xFA, AXC0)
                            Store (Zero, AXC1)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x05))
                        {
                            Store (Zero, INAC)
                            Store (0x03, INCH)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }
                    }
                    Else
                    {
                        Store (Package (0x02)
                            {
                                0x34, 
                                Zero
                            }, Local4)
                    }
                }

                If (LEqual (Local1, One))
                {
                    If (And (BATP, 0x02))
                    {
                        Store ("battery 1", Debug)
                        Store (DerefOf (Index (Local0, 0x11)), Local2)
                        If (LEqual (Local2, Zero))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Zero, AXC0)
                            Store (Zero, AXC1)
                            Store (One, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, One))
                        {
                            Store (Zero, INAC)
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, AXC0)
                            Store (Zero, AXC1)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x02))
                        {
                            Store (One, INAC)
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x03))
                        {
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, INAC)
                            Store (0xFA, AXC0)
                            Store (Zero, AXC1)
                            Store (Zero, PSSB)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x04))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x05))
                        {
                            Store (Zero, INAC)
                            Store (0x03, INCH)
                            Store (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }, Local4)
                        }
                    }
                    Else
                    {
                        Store (Package (0x02)
                            {
                                0x34, 
                                Zero
                            }, Local4)
                    }
                }
            }

            Release (ECMX)
            Return (Local4)
        }

        Method (GBTI, 1, NotSerialized)
        {
            Store ("Enter getbattinfo", Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                If (And (BATP, ShiftLeft (One, Arg0)))
                {
                    Store (Arg0, BSEL)
                    Store (Package (0x03)
                        {
                            Zero, 
                            0x6B, 
                            Buffer (0x6B){}
                        }, Local0)
                    Store (B1B2 (BDC0, BDC1), Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (ShiftRight (B1B2 (BDC0, BDC1), 0x08), Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (B1B2 (BFC0, BFC1), Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (ShiftRight (B1B2 (BFC0, BFC1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    Store (B1B2 (BRC0, BRC1), Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    Store (ShiftRight (B1B2 (BRC0, BRC1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x05))
                    Store (B1B2 (BME0, BME1), Index (DerefOf (Index (Local0, 0x02)), 0x06))
                    Store (ShiftRight (B1B2 (BME0, BME1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x07))
                    Store (B1B2 (BCC0, BCC1), Index (DerefOf (Index (Local0, 0x02)), 0x08))
                    Store (ShiftRight (B1B2 (BCC0, BCC1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x09))
                    Store (B1B2 (CBT0, CBT1), Local1)
                    Subtract (Local1, 0x0AAC, Local1)
                    Divide (Local1, 0x0A, Local2, Local3)
                    Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x0A))
                    Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0B))
                    Store (B1B2 (BPV0, BPV1), Index (DerefOf (Index (Local0, 0x02)), 0x0C))
                    Store (ShiftRight (B1B2 (BPV0, BPV1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0D))
                    Store (B1B2 (BPR0, BPR1), Local1)
                    If (Local1)
                    {
                        If (And (B1B2 (BST0, BST1), 0x40))
                        {
                            Add (Not (Local1), One, Local1)
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x0E))
                    Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0F))
                    Store (B1B2 (BDV0, BDV1), Index (DerefOf (Index (Local0, 0x02)), 0x10))
                    Store (ShiftRight (B1B2 (BDV0, BDV1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x11))
                    Store (B1B2 (BST0, BST1), Index (DerefOf (Index (Local0, 0x02)), 0x12))
                    Store (ShiftRight (B1B2 (BST0, BST1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x13))
                    Store (B1B2 (BCX0, BCX1), Index (DerefOf (Index (Local0, 0x02)), 0x14))
                    Store (ShiftRight (B1B2 (BCX0, BCX1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x15))
                    Store (B1B2 (BCA0, BCA1), Index (DerefOf (Index (Local0, 0x02)), 0x16))
                    Store (ShiftRight (B1B2 (BCA0, BCA1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x17))
                    Store (B1B2 (BCB0, BCB1), Index (DerefOf (Index (Local0, 0x02)), 0x18))
                    Store (ShiftRight (B1B2 (BCB0, BCB1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x19))
                    Store (B1B2 (BCP0, BCP1), Index (DerefOf (Index (Local0, 0x02)), 0x1A))
                    Store (ShiftRight (B1B2 (BCP0, BCP1), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x1B))
                    CreateField (DerefOf (Index (Local0, 0x02)), 0xE0, 0x80, BTSN)
                    Store (GBSS (B1B2 (BSN0, BSN1), B1B2 (BDA0, BDA1)), BTSN)
                    Store (GBMF (), Local1)
                    Store (SizeOf (Local1), Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x0160, Multiply (Local2, 0x08), BMAN)
                    Store (Local1, BMAN)
                    Add (Local2, 0x2C, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x80, CLBL)
                    Store (GCTL (Zero), CLBL)
                    Add (Local2, 0x11, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x38, DNAM)
                    Store (GDNM (Zero), DNAM)
                    Add (Local2, 0x07, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x20, DCHE)
                    Store (GDCH (Zero), DCHE)
                    Add (Local2, 0x04, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, BMAC)
                    Store (Zero, BMAC)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, BMAD)
                    Store (B1B2 (BDA0, BDA1), BMAD)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, BCCU)
                    Store (BRCC, BCCU)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, BCVO)
                    Store (BRCV, BCVO)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, BAVC)
                    Store (B1B2 (BCR0, BCR1), Local1)
                    If (Local1)
                    {
                        If (And (B1B2 (BST0, BST1), 0x40))
                        {
                            Add (Not (Local1), One, Local1)
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, BAVC)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, RTTE)
                    Store (B1B2 (RTE0, RTE1), RTTE)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, ATTE)
                    Store (B1B2 (ATE0, ATE1), RTTE)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x10, ATTF)
                    Store (B1B2 (ATF0, ATF1), RTTE)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, 0x02)), Multiply (Local2, 0x08), 0x08, NOBS)
                    Store (BATN, NOBS)
                }
                Else
                {
                    Store (Package (0x02)
                        {
                            0x34, 
                            Zero
                        }, Local0)
                }
            }
            Else
            {
                Store (Package (0x02)
                    {
                        0x0D, 
                        Zero
                    }, Local0)
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (GBTC, 0, NotSerialized)
        {
            Store ("Enter GetBatteryControl", Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }, Local0)
                If (And (BATP, One))
                {
                    Store (Zero, BSEL)
                    Store (Zero, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                    {
                        Store (Zero, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (AXC0, AXC1), Zero)))
                    {
                        Store (One, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, 0x02)))
                    {
                        Store (0x02, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (AXC0, AXC1), 0xFA)))
                    {
                        Store (0x03, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                    {
                        Store (0x04, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                }
                Else
                {
                    Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), Zero))
                }

                If (And (BATP, 0x02))
                {
                    Store (One, BSEL)
                    Store (Zero, Index (DerefOf (Index (Local0, 0x02)), One))
                    If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                    {
                        Store (Zero, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (AXC0, AXC1), Zero)))
                    {
                        Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, One)))
                    {
                        Store (0x02, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (AXC0, AXC1), 0xFA)))
                    {
                        Store (0x03, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                    {
                        Store (0x04, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                }
                Else
                {
                    Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), One))
                }
            }
            Else
            {
                Store (Package (0x02)
                    {
                        0x35, 
                        Zero
                    }, Local0)
            }

            Release (ECMX)
            Return (Local0)
        }
    }

    Scope (\_SB)
    {
        Name (NBTI, Package (0x02)
        {
            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Primary", 
                "100000", 
                "LIon", 
                "Hewlett-Packard", 
                Zero, 
                Zero
            }, 

            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Travel", 
                "100000", 
                "LIon", 
                "Hewlett-Packard", 
                Zero, 
                Zero
            }
        })
    }

    Method (B1B2, 2, NotSerialized)
    {
        ShiftLeft (Arg1, 0x08, Local0)
        Or (Arg0, Local0, Local0)
        Return (Local0)
    }
}

