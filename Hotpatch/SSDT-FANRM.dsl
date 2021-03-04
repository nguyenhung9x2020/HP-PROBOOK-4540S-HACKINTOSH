/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL1UsOdW.aml, Thu Mar  4 15:09:08 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000052C (1324)
 *     Revision         0x02
 *     Checksum         0x13
 *     OEM ID           "hack"
 *     OEM Table ID     "_FANRM"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_FANRM", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC__.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC__.FRDC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FTGC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TEMP, FieldUnitObj)

    Device (SMCD)
    {
        Name (_HID, "FAN00000")  // _HID: Hardware ID
        Name (TACH, Package (0x02)
        {
            "System Fan", 
            "FAN0"
        })
        Name (TEMP, Package (0x04)
        {
            "CPU Heatsink", 
            "TCPU", 
            "Ambient", 
            "TAMB"
        })
        Method (FAN0, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG)
            {
                Return (Zero)
            }

            Local0 = \_SB.PCI0.LPCB.EC.FRDC /* External reference */
            If (Local0)
            {
                Local0 = ((0x0003C000 + (Local0 >> One)) / Local0)
            }

            If ((0x03C4 == Local0))
            {
                Return (Zero)
            }

            Return (Local0)
        }

        Method (TCPU, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG)
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = One
            Local0 = \_SB.PCI0.LPCB.EC.DTMP /* External reference */
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }

        Method (TAMB, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG)
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = 0x04
            Local0 = \_SB.PCI0.LPCB.EC.TEMP /* External reference */
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }

        Name (FTA1, Package (0x15)
        {
            0x39, 
            0x3A, 
            0x3B, 
            0x39, 
            0x3C, 
            0x3D, 
            0x3E, 
            0x3F, 
            0x40, 
            0x41, 
            0x42, 
            0x43, 
            0x44, 
            0x45, 
            0x46, 
            0x47, 
            0x48, 
            0x49, 
            0x4A, 
            0x4B, 
            0xFF
        })
        Name (FTA2, Package (0x15)
        {
            0x80, 
            0x7A, 
            0x73, 
            0x6E, 
            0x6D, 
            0x67, 
            0x60, 
            0x5A, 
            0x57, 
            0x55, 
            0x52, 
            0x50, 
            0x4D, 
            0x49, 
            0x44, 
            0x40, 
            0x3B, 
            0x38, 
            0x34, 
            0x31, 
            Zero
        })
        Name (FCTU, 0x14)
        Name (FCTD, 0x28)
        Name (FHST, Buffer (0x10)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        Name (FIDX, Zero)
        Name (FNUM, Zero)
        Name (FSUM, Zero)
        Name (FLST, 0xFF)
        Name (FCNT, Zero)
        Method (FCPU, 0, NotSerialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG)
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = One
            \_SB.PCI0.LPCB.EC.TEMP = 0x1F
            \_SB.PCI0.LPCB.EC.CRZN = One
            Local0 = \_SB.PCI0.LPCB.EC.DTMP /* External reference */
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Local1 = (Local0 + FSUM) /* \SMCD.FSUM */
            Local2 = FIDX /* \SMCD.FIDX */
            Local1 -= DerefOf (FHST [Local2])
            FHST [Local2] = Local0
            FSUM = Local1
            Local2++
            If ((Local2 >= SizeOf (FHST)))
            {
                Local2 = Zero
            }

            FIDX = Local2
            Local2 = FNUM /* \SMCD.FNUM */
            If ((Local2 != SizeOf (FHST)))
            {
                Local2++
                FNUM = Local2
            }

            Local0 = (Local1 / Local2)
            If ((Local0 > 0xFF))
            {
                Local0 = 0xFF
            }

            Local2 = Match (FTA1, MGE, Local0, MTR, Zero, Zero)
            If ((Local2 > FLST))
            {
                Local1 = (Local2 - FLST) /* \SMCD.FLST */
                Local4 = FCTU /* \SMCD.FCTU */
            }
            Else
            {
                Local1 = (FLST - Local2)
                Local4 = FCTD /* \SMCD.FCTD */
            }

            If (!Local1)
            {
                FCNT = Zero
            }
            Else
            {
                Local3 = FCNT /* \SMCD.FCNT */
                FCNT++
                Local1 = (Local4 / Local1)
                If ((Local3 >= Local1))
                {
                    FLST = Local2
                    \_SB.PCI0.LPCB.EC.FTGC = DerefOf (FTA2 [Local2])
                    FCNT = Zero
                }
            }

            Return (Local0)
        }
    }
}

