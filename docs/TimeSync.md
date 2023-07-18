# Time Sync on Windows

1. Open Registry Editor and navigate to the following key:

```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation
```

2. Create a new DWORD value named `RealTimeIsUniversal` and set its value data to 1 (Hex).
