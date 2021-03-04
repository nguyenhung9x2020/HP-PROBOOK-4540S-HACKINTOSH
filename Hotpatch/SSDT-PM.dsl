/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLKnCvCb.aml, Thu Mar  4 15:10:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000737 (1847)
 *     Revision         0x01
 *     Checksum         0x7A
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00021500 (136448)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 1, "APPLE ", "CpuPm", 0x00021500)
{
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)

    Scope (\_PR.CPU0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Debug = "ssdtPRGen version.....: 21.5 / Mac OS X 11.2.2 (Build 20D80)"
            Debug = "custom mode...........: 0"
            Debug = "host processor........: Intel(R) Core(TM) i5-3210M CPU @ 2.50GHz"
            Debug = "target processor......: i5-3210M"
            Debug = "number of processors..: 1"
            Debug = "baseFrequency.........: 1200"
            Debug = "frequency.............: 2500"
            Debug = "busFrequency..........: 100"
            Debug = "logicalCPUs...........: 4"
            Debug = "maximum TDP...........: 35"
            Debug = "packageLength.........: 20"
            Debug = "turboStates...........: 6"
            Debug = "maxTurboFrequency.....: 3100"
            Debug = "CPU Workarounds.......: 3"
            Debug = "machdep.xcpm.mode.....: 0"
        }

        Name (APLF, 0x05)
        Name (APSN, 0x07)
        Name (APSS, Package (0x1A)
        {
            Package (0x06)
            {
                0x0C1D, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x2000, 
                0x2000
            }, 

            Package (0x06)
            {
                0x0C1C, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1F00, 
                0x1F00
            }, 

            Package (0x06)
            {
                0x0BB8, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1E00, 
                0x1E00
            }, 

            Package (0x06)
            {
                0x0B54, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1D00, 
                0x1D00
            }, 

            Package (0x06)
            {
                0x0AF0, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1C00, 
                0x1C00
            }, 

            Package (0x06)
            {
                0x0A8C, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1B00, 
                0x1B00
            }, 

            Package (0x06)
            {
                0x0A28, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1A00, 
                0x1A00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x0960, 
                0x81C3, 
                0x0A, 
                0x0A, 
                0x1800, 
                0x1800
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x7AF0, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x743E, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x6DAE, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x673F, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x60F1, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x5AC3, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x54B5, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x4EC7, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x48F9, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0x434A, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0x3DBA, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x3849, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x03E8, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0A00, 
                0x0A00
            }, 

            Package (0x06)
            {
                0x0384, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }, 

            Package (0x06)
            {
                0x02BC, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0700, 
                0x0700
            }
        })
        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method _PR_.CPU0.ACST Called"
            Debug = "CPU0 C-States    : 29"
            Return (Package (0x06)
            {
                One, 
                0x04, 
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    }, 

                    One, 
                    Zero, 
                    0x03E8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x03, 
                    0xCD, 
                    0x01F4
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x06, 
                    0xF5, 
                    0x015E
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x07, 
                    0xF5, 
                    0xC8
                }
            })
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Debug = "Method _PR_.CPU0._DSM Called"
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }

    Scope (\_PR.CPU1)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _PR_.CPU1.APSS Called"
            Return (\_PR.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method _PR_.CPU1.ACST Called"
            Debug = "CPU1 C-States    : 7"
            Return (Package (0x05)
            {
                One, 
                0x03, 
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    }, 

                    One, 
                    0x03E8, 
                    0x03E8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x02, 
                    0x94, 
                    0x01F4
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x03, 
                    0xC6, 
                    0xC8
                }
            })
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _PR_.CPU2.APSS Called"
            Return (\_PR.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_PR.CPU1.ACST ())
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _PR_.CPU3.APSS Called"
            Return (\_PR.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_PR.CPU1.ACST ())
        }
    }
}

