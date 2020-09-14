/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLr8MDwd.aml, Mon Sep 14 19:21:07 2020
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
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.CRZN, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DTMP, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECMX, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECRG, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.FRDC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.FTGC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.TEMP, FieldUnitObj)    // (from opcode)

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
            If (LNot (\_SB.PCI0.LPCB.EC.ECRG))
            {
                Return (Zero)
            }

            Store (\_SB.PCI0.LPCB.EC.FRDC, Local0)
            If (Local0)
            {
                Divide (Add (0x0003C000, ShiftRight (Local0, One)), Local0, , Local0)
            }

            If (LEqual (0x03C4, Local0))
            {
                Return (Zero)
            }

            Return (Local0)
        }

        Method (TCPU, 0, Serialized)
        {
            If (LNot (\_SB.PCI0.LPCB.EC.ECRG))
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            Store (One, \_SB.PCI0.LPCB.EC.CRZN)
            Store (\_SB.PCI0.LPCB.EC.DTMP, Local0)
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }

        Method (TAMB, 0, Serialized)
        {
            If (LNot (\_SB.PCI0.LPCB.EC.ECRG))
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            Store (0x04, \_SB.PCI0.LPCB.EC.CRZN)
            Store (\_SB.PCI0.LPCB.EC.TEMP, Local0)
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
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        })
        Name (FIDX, Zero)
        Name (FNUM, Zero)
        Name (FSUM, Zero)
        Name (FLST, 0xFF)
        Name (FCNT, Zero)
        Method (FCPU, 0, NotSerialized)
        {
            If (LNot (\_SB.PCI0.LPCB.EC.ECRG))
            {
                Return (Zero)
            }

            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            Store (One, \_SB.PCI0.LPCB.EC.CRZN)
            Store (0x1F, \_SB.PCI0.LPCB.EC.TEMP)
            Store (One, \_SB.PCI0.LPCB.EC.CRZN)
            Store (\_SB.PCI0.LPCB.EC.DTMP, Local0)
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Add (Local0, FSUM, Local1)
            Store (FIDX, Local2)
            Subtract (Local1, DerefOf (Index (FHST, Local2)), Local1)
            Store (Local0, Index (FHST, Local2))
            Store (Local1, FSUM)
            Increment (Local2)
            If (LGreaterEqual (Local2, SizeOf (FHST)))
            {
                Store (Zero, Local2)
            }

            Store (Local2, FIDX)
            Store (FNUM, Local2)
            If (LNotEqual (Local2, SizeOf (FHST)))
            {
                Increment (Local2)
                Store (Local2, FNUM)
            }

            Divide (Local1, Local2, , Local0)
            If (LGreater (Local0, 0xFF))
            {
                Store (0xFF, Local0)
            }

            Store (Match (FTA1, MGE, Local0, MTR, Zero, Zero), Local2)
            If (LGreater (Local2, FLST))
            {
                Subtract (Local2, FLST, Local1)
                Store (FCTU, Local4)
            }
            Else
            {
                Subtract (FLST, Local2, Local1)
                Store (FCTD, Local4)
            }

            If (LNot (Local1))
            {
                Store (Zero, FCNT)
            }
            Else
            {
                Store (FCNT, Local3)
                Increment (FCNT)
                Divide (Local4, Local1, , Local1)
                If (LGreaterEqual (Local3, Local1))
                {
                    Store (Local2, FLST)
                    Store (DerefOf (Index (FTA2, Local2)), \_SB.PCI0.LPCB.EC.FTGC)
                    Store (Zero, FCNT)
                }
            }

            Return (Local0)
        }
    }
}

