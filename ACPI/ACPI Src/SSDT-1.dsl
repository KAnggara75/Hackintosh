/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Mon Jan  1 17:32:15 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002D9 (729)
 *     Revision         0x01
 *     Checksum         0xBB
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130927 (538118439)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "SataAhci", 0x00001000)
{
    External (_SB_.PCI0.SATA, DeviceObj)
    External (DVS0, FieldUnitObj)
    External (DVS1, FieldUnitObj)
    External (DVS2, FieldUnitObj)
    External (DVS3, FieldUnitObj)

    Scope (\_SB.PCI0.SATA)
    {
        Device (PRT0)
        {
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SATA.PRT0.FDEV */
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SATA.PRT0.FDRP */
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), 
                    LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                    })
                    Return (PIB1) /* \_SB_.PCI0.SATA.PRT0._GTF.PIB1 */
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                })
                Return (PIB2) /* \_SB_.PCI0.SATA.PRT0._GTF.PIB2 */
            }
        }

        Device (PRT1)
        {
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SATA.PRT1.FDEV */
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SATA.PRT1.FDRP */
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), 
                    LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                    })
                    Return (PIB1) /* \_SB_.PCI0.SATA.PRT1._GTF.PIB1 */
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                })
                Return (PIB2) /* \_SB_.PCI0.SATA.PRT1._GTF.PIB2 */
            }
        }

        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SATA.PRT2.FDEV */
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SATA.PRT2.FDRP */
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), 
                    LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                    })
                    Return (PIB1) /* \_SB_.PCI0.SATA.PRT2._GTF.PIB1 */
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                })
                Return (PIB2) /* \_SB_.PCI0.SATA.PRT2._GTF.PIB2 */
            }
        }

        Device (PRT3)
        {
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SATA.PRT3.FDEV */
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SATA.PRT3.FDRP */
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), 
                    LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                    })
                    Return (PIB1) /* \_SB_.PCI0.SATA.PRT3._GTF.PIB1 */
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                })
                Return (PIB2) /* \_SB_.PCI0.SATA.PRT3._GTF.PIB2 */
            }
        }

        Device (PRT5)
        {
            Name (_ADR, 0x0005FFFF)  // _ADR: Address
            Name (GTF5, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00         // .......
            })
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00         // .......
                    }, GTF5) /* \_SB_.PCI0.SATA.PRT5.GTF5 */
                Return (GTF5) /* \_SB_.PCI0.SATA.PRT5.GTF5 */
            }
        }
    }
}

