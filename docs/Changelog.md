# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2023-07-15

- Upgrade VoodooRMI 1.3.5
- Upgrade VoodooPS2Controller 2.3.5
- Upgrade WhateverGreen 1.6.5
- Upgrade ECEnabler 1.0.4
- Upgrade SMC 1.3.2
- Upgrade Lilu 1.6.6
- Upgrade AppleALC 1.8.3
- Upgrade OpenCore 0.9.3
- Upgrade AirportItlwm 2.2.0 for Monterey
- Update .gitignore
- fix: git action
- Roll Back to 0.1.13

## [0.1.14] - 2023-07-09

- fix: Bluetooth on Monterey
- update docs
- upgrade VoodooRMI 1.3.5
- upgrade ECEnabler 1.0.4
- upgrade: OC 0.9.3 drivers
- upgrade: OC 0.9.3 Tools
- upgrade: OC 0.9.3 config
- fix: wifi
- upgrade AirportItlwm 2.2.0
- upgrade AppleALC 1.8.3
- upgrade Lilu 1.6.6
- upgrade SMC 1.3.2
- upgrade VoodooPS2Controller 2.3.5
- upgrade WhateverGreen 1.6.5
- upgrade VoodooRMI 1.3.5
- add: .gitignore
- fix: change images to png
- update docs

## [0.1.13] - 2023-07-08

- Update README.md

## [0.1.12] - 2022-11-27

- add: upgrade gitversion

## [0.1.11] - 2022-11-27

- fix: remove docs file on release

## [0.1.10] - 2022-11-27

- add: plug comment
- fix: remove scan nvme, i dont need it
- fix: just add OC version on UEFI var
- fix: remove picker atribute & display level
- fix: remove timeout 5 to 0
- add: cpu data on ssdt plug

## [0.1.9] - 2022-11-24

- add: EHC1 to EH01 rename
- fix: scan policy
- fix: acpi pnlf comment
- fix: kext order
- add: cleanNvram tool
- add: iGPU patch
- fix: shutdown with rehabman patch
- fix: usb map set to type a [HS01 & SS02]

## [0.1.8] - 2022-11-14

- fix: remove debug verbose

## [0.1.7] - 2022-11-13

- fix: Battery indicator
- fix: Shutdown
- fix: RTCFix
- add: EFI basic 0.8.6 (not stable)
- fix: prepare upgrade to 0.8.6

## [0.1.6] - 2022-05-11

- backup 220511
- add: ms boot update
- fix: disable ResetLogoStatus
- fix: disable VectorAcceleration
- fix: enable XhciPortLimit

## [0.1.5] - 2022-03-20

- Upgrade OpenCore to 0.7.9
- Upgrade AppleALC
- Upgrade VirtualSMC
- Upgrade WhateverGreen
- Upgrade VoodooPS2Controller
- .gitignore
- Readme.md

## [0.1.4] - 2022-03-01

- SMBIOS
- SMBIOS DataHub
- .gitignore
- Create Countinous Integration Release as ZIP
- Fix RTC Fail
- Fix Shutdown
- remove Unused kernel

[unreleased]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.14...HEAD
[0.1.14]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.13...0.1.14
[0.1.13]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.12...0.1.13
[0.1.12]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.11...0.1.12
[0.1.11]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.10...0.1.11
[0.1.10]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.9...0.1.10
[0.1.9]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.8...0.1.9
[0.1.8]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.7...0.1.8
[0.1.7]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.6...0.1.7
[0.1.6]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.5...0.1.6
[0.1.5]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.4...0.1.5
[0.1.4]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.3...0.1.4
[0.1.3]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.2...0.1.3
[0.1.2]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.1...0.1.2
[0.1.1]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/kanggara75/Hackintosh-HP-840-G2-OpenCore/releases/tag/0.1.0
