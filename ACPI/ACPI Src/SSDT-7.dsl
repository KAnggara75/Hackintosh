/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Mon Jan  1 17:42:32 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000092C (2348)
 *     Revision         0x02
 *     Checksum         0x0E
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130927 (538118439)
 */
DefinitionBlock ("", "SSDT", 2, "SaSsdt", "SaSsdt ", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)

    OperationRegion (SANV, SystemMemory, 0x8BF65F18, 0x00B0)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        RC7A,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        DLPW,   16, 
        DLHR,   16, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8
    }

    Scope (\_SB.PCI0)
    {
        Device (B0D3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Name (BARA, 0x80000000)
            Name (BBAR, 0x00)
            Name (TBAR, 0x00)
            Name (TCMD, 0x00)
            Name (MODB, 0x00)
            Name (MODC, 0x00)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (AUVD, 0xFFFF))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    Store (ABAR, BARA) /* \_SB_.PCI0.B0D3.BARA */
                    If (LNotEqual (ABAH, 0x00))
                    {
                        Or (BARA, ShiftLeft (ABAH, 0x20), BARA) /* \_SB_.PCI0.B0D3.BARA */
                    }
                }
            }

            OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18004), 
                ACMD,   8, 
                Offset (0x18010), 
                ABAR,   32, 
                ABAH,   32
            }

            OperationRegion (RPCZ, PCI_Config, 0x00, 0x40)
            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16
            }

            Method (ASTR, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    Store (0x00, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    If (LNotEqual (ABAH, 0x00))
                    {
                        Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    }

                    Add (BBAR, 0x1000, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        EM4W,   32, 
                        EMWA,   32, 
                        Offset (0x1C), 
                        ADWA,   32
                    }

                    Store (AUDA, EMWA) /* \_SB_.PCI0.B0D3.ASTR.EMWA */
                    Store (AUDC, EM4W) /* \_SB_.PCI0.B0D3.ASTR.EM4W */
                }
            }

            Method (VSTR, 1, Serialized)
            {
                Name (CONT, 0x03E8)
                Name (ADDR, 0x80000000)
                Store (Arg0, ADDR) /* \_SB_.PCI0.B0D3.VSTR.ADDR */
                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }

                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    If (LNotEqual (CDEC, 0x00))
                    {
                        Store (0x00, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                        And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                        If (LNotEqual (ABAH, 0x00))
                        {
                            Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                        }

                        OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60), 
                            AVIC,   32, 
                            Offset (0x68), 
                            AIRS,   16
                        }

                        Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.VSTR.CONT */
                        While (LAnd (LEqual (And (AIRS, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                        {
                            Stall (0x01)
                            Decrement (CONT)
                        }

                        Or (AIRS, 0x02, AIRS) /* \_SB_.PCI0.B0D3.VSTR.AIRS */
                        Store (CDEC, AVIC) /* \_SB_.PCI0.B0D3.VSTR.AVIC */
                        Or (AIRS, 0x01, AIRS) /* \_SB_.PCI0.B0D3.VSTR.AIRS */
                        Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.VSTR.CONT */
                        While (LAnd (LEqual (And (AIRS, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                        {
                            Stall (0x01)
                            Decrement (CONT)
                        }
                    }
                }
            }

            Method (CXDC, 0, Serialized)
            {
                Name (IDDX, 0x80000000)
                If (LAnd (LNotEqual (CADR, 0x00), LNotEqual (CCNT, 0x00)))
                {
                    Store (CADR, IDDX) /* \_SB_.PCI0.B0D3.CXDC.IDDX */
                    While (LLess (IDDX, Add (CADR, Multiply (CCNT, 0x04))))
                    {
                        VSTR (IDDX)
                        Add (IDDX, 0x04, IDDX) /* \_SB_.PCI0.B0D3.CXDC.IDDX */
                    }
                }
            }

            Method (ARST, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        CRST,   32, 
                        Offset (0x4C), 
                        CORB,   32, 
                        Offset (0x5C), 
                        RIRB,   32, 
                        Offset (0x80), 
                        OSD1,   32, 
                        Offset (0xA0), 
                        OSD2,   32
                    }

                    And (CORB, 0xFFFFFFFD, CORB) /* \_SB_.PCI0.B0D3.ARST.CORB */
                    And (RIRB, 0xFFFFFFFD, RIRB) /* \_SB_.PCI0.B0D3.ARST.RIRB */
                    And (OSD1, 0xFFFFFFFD, OSD1) /* \_SB_.PCI0.B0D3.ARST.OSD1 */
                    And (OSD2, 0xFFFFFFFD, OSD2) /* \_SB_.PCI0.B0D3.ARST.OSD2 */
                    And (CRST, 0xFFFFFFFE, CRST) /* \_SB_.PCI0.B0D3.ARST.CRST */
                }
            }

            Method (AINI, 0, Serialized)
            {
                Name (CONT, 0x03E8)
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    Store (0x00, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    If (LNotEqual (ABAH, 0x00))
                    {
                        Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    }

                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16, 
                        Offset (0x08), 
                        GCTL,   32, 
                        Offset (0x0E), 
                        SSTS,   8, 
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Or (GCTL, 0x01, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                    Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x00), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }

                    And (GCAP, 0xFFFF, GCAP) /* \_SB_.PCI0.B0D3.AINI.GCAP */
                    Or (SSTS, 0x0F, SSTS) /* \_SB_.PCI0.B0D3.AINI.SSTS */
                    And (GCTL, 0xFFFFFFFE, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                    Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }

                    Or (GCTL, 0x01, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                    Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x00), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }
                }
            }

            Method (ABWA, 1, Serialized)
            {
                If (Arg0)
                {
                    If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LEqual (And (ABAR, 0xFFFFC000
                        ), 0x00)))
                    {
                        If (LNotEqual (BARA, 0x80000000))
                        {
                            Store (ABAR, TBAR) /* \_SB_.PCI0.B0D3.TBAR */
                            Or (TBAR, ShiftLeft (ABAH, 0x20), TBAR) /* \_SB_.PCI0.B0D3.TBAR */
                            Store (ACMD, TCMD) /* \_SB_.PCI0.B0D3.TCMD */
                            Store (ShiftRight (BARA, 0x20), ABAH) /* \_SB_.PCI0.B0D3.ABAH */
                            Store (BARA, ABAR) /* \_SB_.PCI0.B0D3.ABAR */
                            Store (0x06, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                            Store (0x01, MODB) /* \_SB_.PCI0.B0D3.MODB */
                        }
                    }
                    ElseIf (LNotEqual (And (ACMD, 0x06), 0x06))
                    {
                        Store (ACMD, TCMD) /* \_SB_.PCI0.B0D3.TCMD */
                        Store (0x06, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                        Store (0x01, MODC) /* \_SB_.PCI0.B0D3.MODC */
                    }
                }
                Else
                {
                    If (MODB)
                    {
                        If (LEqual (ABAR, BARA))
                        {
                            Store (TBAR, ABAR) /* \_SB_.PCI0.B0D3.ABAR */
                            Store (ShiftRight (TBAR, 0x20), ABAH) /* \_SB_.PCI0.B0D3.ABAH */
                            Store (TCMD, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                        }
                    }

                    If (MODC)
                    {
                        Store (TCMD, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                    }
                }
            }

            Method (DCCC, 1, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                    ABAR, 0xFFFFC000), 0x00)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    OperationRegion (IPCV, SystemMemory, BBAR, 0x1020)
                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x100C), 
                        AEM4,   32, 
                        AEM5,   32
                    }

                    If (LEqual (Arg0, 0x00))
                    {
                        And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        Or (AEM4, 0x04, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                        Or (AEM5, 0x4B, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    }

                    If (LEqual (Arg0, 0x01))
                    {
                        And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        Or (AEM4, 0x04, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                        Or (AEM5, 0x5A, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        Or (AEM4, 0x10, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                        Or (AEM5, 0xE1, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    }

                    If (LEqual (Arg0, 0x03))
                    {
                        And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        Or (AEM4, 0x08, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                        And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                        Or (AEM5, 0xE1, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    }
                }
            }
        }
    }
}

