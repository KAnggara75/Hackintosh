/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6.aml, Mon Jan  1 17:41:58 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001D5 (469)
 *     Revision         0x02
 *     Checksum         0x68
 *     OEM ID           "PmRef"
 *     OEM Table ID     "LakeTiny"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130927 (538118439)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "LakeTiny", 0x00003000)
{
    External (_PR_.CPU0.GEAR, IntObj)
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (MPMF, UnknownObj)
    External (PNOT, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.SATA)
    {
        Method (SLT1, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x00, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (SLT2, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x01, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (SLT3, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, 0x01, Local0)
            Or (Local0, 0x01, Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.SAT1)
    {
        Method (SLT1, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x00, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (SLT2, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x01, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (SLT3, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR) /* External reference */
                \PNOT ()
            }

            Return (0x00)
        }

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, 0x01, Local0)
            And (MPMF, 0x01, Local1)
            Or (Local0, Local1, Local0)
            Return (Local0)
        }
    }
}

