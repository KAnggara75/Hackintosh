//
// Based on the sample found at https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/SSDT-PLUG.dsl
//
DefinitionBlock ("", "SSDT", 2, "CORP", "CpuPlug", 0x00003000)
{
    External (\_PR.CPU0, ProcessorObj)
    Scope (\_PR.CPU0)
    {
        If (_OSI ("Darwin")) {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                        0x03
                    })
                }
                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }
    }
}