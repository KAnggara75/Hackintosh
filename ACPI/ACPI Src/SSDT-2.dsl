/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Mon Jan  1 17:32:18 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000048A (1162)
 *     Revision         0x01
 *     Checksum         0x8B
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "PtidDevc"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130927 (538118439)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "PtidDevc", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC0_.BCVD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.PL1_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.PL2_, FieldUnitObj)
    External (_TZ_.BATZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.CPUZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.EXTZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.GDTP, MethodObj)    // 2 Arguments
    External (_TZ_.GFRM, MethodObj)    // 0 Arguments
    External (_TZ_.GFSD, MethodObj)    // 0 Arguments
    External (_TZ_.GFXZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.GTRM, MethodObj)    // 0 Arguments
    External (_TZ_.LOCZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.PCHZ._TMP, MethodObj)    // 0 Arguments

    Device (PTID)
    {
        Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
        Name (IVER, 0x00020001)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Name (TMPV, Package (0x24)
        {
            0x00, 
            "0-CPUZ-CPU reading via EC", 
            0x80000000, 
            0x01, 
            "1-GFXZ-Graphics via EC", 
            0x80000000, 
            0x03, 
            "2-EXTZ-External/Remote 1", 
            0x80000000, 
            0x03, 
            "3-LOCZ-Local/Internal", 
            0x80000000, 
            0x03, 
            "5-BATZ-Battery", 
            0x80000000, 
            0x05, 
            "6-PCHZ-PCH DTS from PCH", 
            0x80000000, 
            0x02, 
            "Dummy", 
            0x80000000, 
            0x02, 
            "Dummy", 
            0x80000000, 
            0x02, 
            "Dummy", 
            0x80000000, 
            0x02, 
            "Dummy", 
            0x80000000, 
            0x02, 
            "V0", 
            0x80000000, 
            0x02, 
            "V1", 
            0x80000000
        })
        Name (PWRV, Package (0x09)
        {
            0x00, 
            "PL1", 
            0x80000000, 
            0x00, 
            "PL2", 
            0x80000000, 
            0x00, 
            "Boost Converter", 
            0x80000000
        })
        Name (OSDV, Package (0x0C)
        {
            0x00, 
            "Fan Speed RPM", 
            "RPM", 
            0x80000000, 
            0x00, 
            "Target Fan RPM", 
            "RPM", 
            0x80000000, 
            0x00, 
            "Fan Speed %", 
            "RAW", 
            0x80000000
        })
        OperationRegion (MCHP, SystemMemory, 0xFED158A4, 0x02)
        Field (MCHP, ByteAcc, NoLock, Preserve)
        {
            VTS0,   8, 
            VTS1,   8
        }

        Method (TSDD, 0, NotSerialized)
        {
            Store (\_TZ.CPUZ._TMP (), Index (TMPV, 0x02))
            Store (\_TZ.GFXZ._TMP (), Index (TMPV, 0x05))
            Store (\_TZ.EXTZ._TMP (), Index (TMPV, 0x08))
            Store (\_TZ.LOCZ._TMP (), Index (TMPV, 0x0B))
            Store (\_TZ.BATZ._TMP (), Index (TMPV, 0x0E))
            Store (\_TZ.PCHZ._TMP (), Index (TMPV, 0x11))
            Store (0x11, Local0)
            Add (Local0, 0x02, Local0)
            Store ("DM1Z-Memory DIMM 1", Index (TMPV, Local0))
            Increment (Local0)
            Store (\_TZ.GDTP (0x30, 0x01), Index (TMPV, Local0))
            Add (Local0, 0x02, Local0)
            Store ("DM2Z-Memory DIMM 2", Index (TMPV, Local0))
            Increment (Local0)
            Store (\_TZ.GDTP (0x34, 0x01), Index (TMPV, Local0))
            While (LLess (Local0, 0x1D))
            {
                Add (Local0, 0x03, Local0)
                Store (0x0AAC, Index (TMPV, Local0))
            }

            Store (Add (Multiply (VTS0, 0x0A), 0x0AAC), Index (TMPV, 0x20))
            Store (Add (Multiply (VTS1, 0x0A), 0x0AAC), Index (TMPV, 0x23))
            Return (TMPV) /* \PTID.TMPV */
        }

        Method (PSDD, 0, NotSerialized)
        {
            Store (0x00, Local0)
            Store (0x00, Local1)
            If (\_SB.PCI0.LPCB.EC0.ECRG)
            {
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                Store (\_SB.PCI0.LPCB.EC0.PL1, Local0)
                Store (\_SB.PCI0.LPCB.EC0.PL2, Local1)
                Store (\_SB.PCI0.LPCB.EC0.BCVD, Local2)
                Release (\_SB.PCI0.LPCB.EC0.ECMX)
            }

            Multiply (Local0, 0x03E8, Index (PWRV, 0x02))
            Multiply (Local1, 0x03E8, Index (PWRV, 0x05))
            Store (Local2, Index (PWRV, 0x08))
            Return (PWRV) /* \PTID.PWRV */
        }

        Method (OSDD, 0, NotSerialized)
        {
            Store (\_TZ.GFRM (), Index (OSDV, 0x03))
            Store (\_TZ.GTRM (), Index (OSDV, 0x07))
            Store (\_TZ.GFSD (), Index (OSDV, 0x0B))
            Return (OSDV) /* \PTID.OSDV */
        }

        Method (SDSP, 0, NotSerialized)
        {
            Return (0x0A)
        }
    }
}

