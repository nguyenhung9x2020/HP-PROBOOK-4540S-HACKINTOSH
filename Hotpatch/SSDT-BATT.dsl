/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLh0Rjux.aml, Thu Mar  4 15:08:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001306 (4870)
 *     Revision         0x02
 *     Checksum         0x2E
 *     OEM ID           "hack"
 *     OEM Table ID     "batt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "batt", 0x00000000)
{
    External (_SB_.NBST, PkgObj)
    External (_SB_.NDBS, PkgObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BATN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BATP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BRCC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BRCV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BSEL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BST_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BSTA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.BTDR, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.BTMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC__.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC__.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC__.GACS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.GBMF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.GBSS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC__.GCTL, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.GDCH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.GDNM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.IDIS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.INAC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.INCH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ITL1, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.NDCB, IntObj)
    External (_SB_.PCI0.LPCB.EC__.NGBF, IntObj)
    External (_SB_.PCI0.LPCB.EC__.NGBT, IntObj)
    External (_SB_.PCI0.LPCB.EC__.NLB1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.NLB2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.PSSB, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TEMP, FieldUnitObj)
    External (BATN, IntObj)
    External (BRCC, IntObj)
    External (BRCV, IntObj)
    External (BST_, IntObj)
    External (ECRG, IntObj)
    External (NDBS, IntObj)
    External (NGBF, IntObj)
    External (NGBT, IntObj)
    External (NLB1, IntObj)
    External (NLB2, IntObj)

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
            Local7 = (One << Arg0)
            BTDR (One)
            If ((BSTA (Local7) == 0x0F))
            {
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            Local0 = NGBF /* External reference */
            Release (BTMX)
            If (((Local0 & Local7) == Zero))
            {
                Return (Zero)
            }

            NBST [Arg0] = NDBS /* External reference */
            Acquire (BTMX, 0xFFFF)
            NGBT |= Local7
            Release (BTMX)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                BSEL = Arg0
                Local0 = B1B2 (BFC0, BFC1)
                DerefOf (NBTI [Arg0]) [One] = Local0
                DerefOf (NBTI [Arg0]) [0x02] = Local0
                DerefOf (NBTI [Arg0]) [0x04] = B1B2 (BDV0, BDV1)
                DerefOf (NBTI [Arg0]) [0x05] = NLB1 /* External reference */
                DerefOf (NBTI [Arg0]) [0x06] = NLB2 /* External reference */
                Local0 = B1B2 (BSN0, BSN1)
                Local1 = B1B2 (BDA0, BDA1)
                DerefOf (NBTI [Arg0]) [0x0D] = B1B2 (BCC0, BCC1)
                Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC.CRZN = 0x05
                Local2 = \_SB.PCI0.LPCB.EC.TEMP /* External reference */
                Release (\_SB.PCI0.LPCB.EC.ECMX)
                Local2 = ((Local2 * 0x0A) + 0x0AAC)
                DerefOf (NBTI [Arg0]) [0x0E] = Local2
            }

            Release (ECMX)
            Local2 = GBSS (Local0, Local1)
            DerefOf (NBTI [Arg0]) [0x0A] = Local2
            Acquire (BTMX, 0xFFFF)
            NGBF &= ~Local7
            Release (BTMX)
            Return (Zero)
        }

        Method (BTST, 2, Serialized)
        {
            Local7 = (One << Arg0)
            BTDR (One)
            If ((BSTA (Local7) == 0x0F))
            {
                NBST [Arg0] = Package (0x04)
                    {
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    }
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            If (Arg1)
            {
                NGBT = 0xFF
            }

            Local0 = NGBT /* External reference */
            Release (BTMX)
            If (((Local0 & Local7) == Zero))
            {
                Return (Zero)
            }

            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                BSEL = Arg0
                Local0 = BST /* External reference */
                Local3 = B1B2 (BPR0, BPR1)
                DerefOf (NBST [Arg0]) [0x02] = B1B2 (BRC0, BRC1)
                DerefOf (NBST [Arg0]) [0x03] = B1B2 (BPV0, BPV1)
            }

            Release (ECMX)
            If ((GACS () == One))
            {
                Local0 &= 0xFFFFFFFFFFFFFFFE
            }
            Else
            {
                Local0 &= 0xFFFFFFFFFFFFFFFD
            }

            If ((Local0 & One))
            {
                Acquire (BTMX, 0xFFFF)
                NDCB = Local7
                Release (BTMX)
            }

            DerefOf (NBST [Arg0]) [Zero] = Local0
            If ((Local0 & One))
            {
                If (((Local3 < 0x0190) || (Local3 > 0x1964)))
                {
                    Local5 = DerefOf (DerefOf (NBST [Arg0]) [One])
                    If (((Local5 < 0x0190) || (Local5 > 0x1964)))
                    {
                        Local3 = 0x0D7A
                    }
                    Else
                    {
                        Local3 = Local5
                    }
                }
            }
            ElseIf (((Local0 & 0x02) == Zero))
            {
                Local3 = Zero
            }

            DerefOf (NBST [Arg0]) [One] = Local3
            Acquire (BTMX, 0xFFFF)
            NGBT &= ~Local7
            Release (BTMX)
            Return (Zero)
        }

        Method (SBTC, 3, NotSerialized)
        {
            Debug = "Enter SetBatteryControl"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = Arg2
                Debug = Local0
                Local4 = Package (0x02)
                    {
                        0x06, 
                        Zero
                    }
                Local1 = Zero
                Local2 = Zero
                Local1 = DerefOf (Local0 [0x10])
                If ((Local1 == Zero))
                {
                    Debug = "battery 0"
                    If ((BATP & One))
                    {
                        Local2 = DerefOf (Local0 [0x11])
                        If ((Local2 == Zero))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            AXC0 = Zero
                            AXC1 = Zero
                            PSSB = One
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == One))
                        {
                            INAC = Zero
                            INCH = 0x02
                            IDIS = One
                            AXC0 = Zero
                            AXC1 = Zero
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x02))
                        {
                            INAC = One
                            INCH = One
                            IDIS = 0x02
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x03))
                        {
                            INCH = 0x02
                            IDIS = One
                            INAC = Zero
                            AXC0 = 0xFA
                            AXC1 = Zero
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x04))
                        {
                            AXC0 = 0xFA
                            AXC1 = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x05))
                        {
                            INAC = Zero
                            INCH = 0x03
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }
                    }
                    Else
                    {
                        Local4 = Package (0x02)
                            {
                                0x34, 
                                Zero
                            }
                    }
                }

                If ((Local1 == One))
                {
                    If ((BATP & 0x02))
                    {
                        Debug = "battery 1"
                        Local2 = DerefOf (Local0 [0x11])
                        If ((Local2 == Zero))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            AXC0 = Zero
                            AXC1 = Zero
                            PSSB = One
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == One))
                        {
                            INAC = Zero
                            INCH = One
                            IDIS = 0x02
                            AXC0 = Zero
                            AXC1 = Zero
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x02))
                        {
                            INAC = One
                            INCH = 0x02
                            IDIS = One
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x03))
                        {
                            INCH = One
                            IDIS = 0x02
                            INAC = Zero
                            AXC0 = 0xFA
                            AXC1 = Zero
                            PSSB = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x04))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }

                        If ((Local2 == 0x05))
                        {
                            INAC = Zero
                            INCH = 0x03
                            Local4 = Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                        }
                    }
                    Else
                    {
                        Local4 = Package (0x02)
                            {
                                0x34, 
                                Zero
                            }
                    }
                }
            }

            Release (ECMX)
            Return (Local4)
        }

        Method (GBTI, 1, NotSerialized)
        {
            Debug = "Enter getbattinfo"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                If ((BATP & (One << Arg0)))
                {
                    BSEL = Arg0
                    Local0 = Package (0x03)
                        {
                            Zero, 
                            0x6B, 
                            Buffer (0x6B){}
                        }
                    DerefOf (Local0 [0x02]) [Zero] = B1B2 (BDC0, BDC1)
                    DerefOf (Local0 [0x02]) [One] = (B1B2 (BDC0, 
                        BDC1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x02] = B1B2 (BFC0, BFC1)
                    DerefOf (Local0 [0x02]) [0x03] = (B1B2 (BFC0, 
                        BFC1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x04] = B1B2 (BRC0, BRC1)
                    DerefOf (Local0 [0x02]) [0x05] = (B1B2 (BRC0, 
                        BRC1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x06] = B1B2 (BME0, BME1)
                    DerefOf (Local0 [0x02]) [0x07] = (B1B2 (BME0, 
                        BME1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x08] = B1B2 (BCC0, BCC1)
                    DerefOf (Local0 [0x02]) [0x09] = (B1B2 (BCC0, 
                        BCC1) >> 0x08)
                    Local1 = B1B2 (CBT0, CBT1)
                    Local1 -= 0x0AAC
                    Divide (Local1, 0x0A, Local2, Local3)
                    DerefOf (Local0 [0x02]) [0x0A] = Local3
                    DerefOf (Local0 [0x02]) [0x0B] = (Local3 >> 0x08
                        )
                    DerefOf (Local0 [0x02]) [0x0C] = B1B2 (BPV0, BPV1)
                    DerefOf (Local0 [0x02]) [0x0D] = (B1B2 (BPV0, 
                        BPV1) >> 0x08)
                    Local1 = B1B2 (BPR0, BPR1)
                    If (Local1)
                    {
                        If ((B1B2 (BST0, BST1) & 0x40))
                        {
                            Local1 = (~Local1 + One)
                            Local1 &= 0xFFFF
                        }
                    }

                    DerefOf (Local0 [0x02]) [0x0E] = Local1
                    DerefOf (Local0 [0x02]) [0x0F] = (Local1 >> 0x08
                        )
                    DerefOf (Local0 [0x02]) [0x10] = B1B2 (BDV0, BDV1)
                    DerefOf (Local0 [0x02]) [0x11] = (B1B2 (BDV0, 
                        BDV1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x12] = B1B2 (BST0, BST1)
                    DerefOf (Local0 [0x02]) [0x13] = (B1B2 (BST0, 
                        BST1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x14] = B1B2 (BCX0, BCX1)
                    DerefOf (Local0 [0x02]) [0x15] = (B1B2 (BCX0, 
                        BCX1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x16] = B1B2 (BCA0, BCA1)
                    DerefOf (Local0 [0x02]) [0x17] = (B1B2 (BCA0, 
                        BCA1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x18] = B1B2 (BCB0, BCB1)
                    DerefOf (Local0 [0x02]) [0x19] = (B1B2 (BCB0, 
                        BCB1) >> 0x08)
                    DerefOf (Local0 [0x02]) [0x1A] = B1B2 (BCP0, BCP1)
                    DerefOf (Local0 [0x02]) [0x1B] = (B1B2 (BCP0, 
                        BCP1) >> 0x08)
                    CreateField (DerefOf (Local0 [0x02]), 0xE0, 0x80, BTSN)
                    BTSN = GBSS (B1B2 (BSN0, BSN1), B1B2 (BDA0, BDA1))
                    Local1 = GBMF ()
                    Local2 = SizeOf (Local1)
                    CreateField (DerefOf (Local0 [0x02]), 0x0160, (Local2 * 0x08), BMAN)
                    BMAN = Local1
                    Local2 += 0x2C
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x80, CLBL)
                    CLBL = GCTL (Zero)
                    Local2 += 0x11
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x38, DNAM)
                    DNAM = GDNM (Zero)
                    Local2 += 0x07
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x20, DCHE)
                    DCHE = GDCH (Zero)
                    Local2 += 0x04
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, BMAC)
                    BMAC = Zero
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, BMAD)
                    BMAD = B1B2 (BDA0, BDA1)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, BCCU)
                    BCCU = BRCC /* External reference */
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, BCVO)
                    BCVO = BRCV /* External reference */
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, BAVC)
                    Local1 = B1B2 (BCR0, BCR1)
                    If (Local1)
                    {
                        If ((B1B2 (BST0, BST1) & 0x40))
                        {
                            Local1 = (~Local1 + One)
                            Local1 &= 0xFFFF
                        }
                    }

                    BAVC = Local1
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, RTTE)
                    RTTE = B1B2 (RTE0, RTE1)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, ATTE)
                    RTTE = B1B2 (ATE0, ATE1)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x10, ATTF)
                    RTTE = B1B2 (ATF0, ATF1)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [0x02]), (Local2 * 0x08), 0x08, NOBS)
                    NOBS = BATN /* External reference */
                }
                Else
                {
                    Local0 = Package (0x02)
                        {
                            0x34, 
                            Zero
                        }
                }
            }
            Else
            {
                Local0 = Package (0x02)
                    {
                        0x0D, 
                        Zero
                    }
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (GBTC, 0, NotSerialized)
        {
            Debug = "Enter GetBatteryControl"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((BATP & One))
                {
                    BSEL = Zero
                    DerefOf (Local0 [0x02]) [Zero] = Zero
                    If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = Zero
                    }
                    ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                        IDIS == One)) && (B1B2 (AXC0, AXC1) == Zero)))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = One
                    }
                    ElseIf (((INAC == One) && (IDIS == 0x02)))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x02
                    }
                    ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                        IDIS == One)) && (B1B2 (AXC0, AXC1) == 0xFA)))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x03
                    }
                    ElseIf (((INAC == Zero) && (INCH == 0x03)))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x04
                    }
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = 0xFF
                }

                If ((BATP & 0x02))
                {
                    BSEL = One
                    DerefOf (Local0 [0x02]) [One] = Zero
                    If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                    }
                    ElseIf (((((INAC == Zero) && (INCH == One)) && (
                        IDIS == 0x02)) && (B1B2 (AXC0, AXC1) == Zero)))
                    {
                        DerefOf (Local0 [0x02]) [One] = One
                    }
                    ElseIf (((INAC == One) && (IDIS == One)))
                    {
                        DerefOf (Local0 [0x02]) [One] = 0x02
                    }
                    ElseIf (((((INAC == Zero) && (INCH == One)) && (
                        IDIS == 0x02)) && (B1B2 (AXC0, AXC1) == 0xFA)))
                    {
                        DerefOf (Local0 [0x02]) [One] = 0x03
                    }
                    ElseIf (((INAC == Zero) && (INCH == 0x03)))
                    {
                        DerefOf (Local0 [0x02]) [One] = 0x04
                    }
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [One] = 0xFF
                }
            }
            Else
            {
                Local0 = Package (0x02)
                    {
                        0x35, 
                        Zero
                    }
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
        Local0 = (Arg1 << 0x08)
        Local0 |= Arg0
        Return (Local0)
    }
}

