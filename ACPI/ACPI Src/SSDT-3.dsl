/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Mon Jan  1 17:32:39 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001CF (463)
 *     Revision         0x01
 *     Checksum         0x64
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "NFCI2C"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130927 (538118439)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "NFCI2C", 0x00000001)
{
    External (_SB_.GLVR, MethodObj)    // 1 Arguments
    External (_SB_.GLVW, MethodObj)    // 2 Arguments
    External (DFUE, FieldUnitObj)
    External (NFCS, FieldUnitObj)

    Scope (\_SB)
    {
        Device (NFC)
        {
            // Name (_ADR, 0x00)  // _ADR: Address
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If (LEqual (NFCS, 0x02))
                {
                    Return (0x2260103B)
                }
                ElseIf (LEqual (NFCS, 0x03))
                {
                    Return (0x1280103B)
                }

                Return (0x00)
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                If (LEqual (NFCS, 0x02))
                {
                    Return (0x2260103B)
                }
                ElseIf (LEqual (NFCS, 0x03))
                {
                    Return (0x1280103B)
                }

                Return (0x00)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (NFCS)
                {
                    Return (0x0F)
                }

                Return (0x00)
            }
        }

        Device (PCSC)
        {
            // Name (_ADR, 0x00)  // _ADR: Address
            Name (_HID, "NXP6100")  // _HID: Hardware ID
            Name (_CID, "NXP6100")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (NFCS)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }
        }

        Device (GPMG)
        {
            // Name (_ADR, 0x00)  // _ADR: Address
            Name (_HID, "INT3397")  // _HID: Hardware ID
            Name (_CID, "INT3397")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DFUE, 0x03))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("5630831c-06c9-4856-b327-f5d32586e060") /* Unknown UUID */))
                {
                    If (LEqual (0x00, ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Return (Buffer (0x01)
                                {
                                     0x07                                             // .
                                })
                            }
                            Case (0x01)
                            {
                                Store (DerefOf (Index (Arg3, 0x00)), Local0)
                                If (LEqual (Local0, 0x01))
                                {
                                    \_SB.GLVW (0x46, 0x01)
                                }
                                Else
                                {
                                    \_SB.GLVW (0x46, 0x00)
                                }

                                Return (0x01)
                            }
                            Case (0x02)
                            {
                                Store (\_SB.GLVR (0x46), Local0)
                                Return (Local0)
                            }

                        }

                        Return (0x00)
                    }

                    Return (0x00)
                }

                Return (0x00)
            }
        }
    }
}

