/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLSNHKKq.aml, Mon Sep 14 19:26:37 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000251 (593)
 *     Revision         0x02
 *     Checksum         0x68
 *     OEM ID           "hack"
 *     OEM Table ID     "usb4x40s"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "usb4x40s", 0x00000000)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x0A)
        {
            "EH01", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x02)
                {
                    "PR11", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }, 

            "HUB1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x08)
                {
                    "HP12", 
                    Package (0x02)
                    {
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HP13", 
                    Package (0x02)
                    {
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HP14", 
                    Package (0x02)
                    {
                        "port", 
                        Buffer (0x04)
                        {
                             0x04, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HP16", 
                    Package (0x04)
                    {
                        "portType", 
                        0x02, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }, 

            "EH02", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x02)
                {
                    "PR21", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }, 

            "HUB2", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x04)
                {
                    "HP22", 
                    Package (0x02)
                    {
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HP23", 
                    Package (0x04)
                    {
                        "portType", 
                        0x02, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }, 

            "8086_1e31", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x04)
                {
                    "SS06", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS07", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }
        })
    }
}

