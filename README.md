# scoop-norgateav-amx

[![Tests](https://github.com/Norgate-AV/scoop-norgateav-amx/actions/workflows/ci.yml/badge.svg)](https://github.com/Norgate-AV/scoop-norgateav-amx/actions/workflows/ci.yml)
[![Excavator](https://github.com/Norgate-AV/scoop-norgateav-amx/actions/workflows/excavator.yml/badge.svg)](https://github.com/Norgate-AV/scoop-norgateav-amx/actions/workflows/excavator.yml)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Bucket of AMX NetLinx modules for [Scoop](https://scoop.sh), the Windows command-line installer.

As module files are installed using symbolic links, it is required to run [Scoop](https://scoop.sh) with admin privileges when installing or upgrading packages.

This can be made less tedious by installing the [sudo](https://github.com/ScoopInstaller/Main/blob/master/bucket/sudo.json) package, which which will temporarily elevate the privileges for the current session, albeit with a UAC popup.

```powershell
scoop install sudo
```

Then you can use `sudo` to install or upgrade packages.

```powershell
sudo scoop install <manifest>
```

## Contents :book:

-   [Installation :zap:](#installation-zap)
-   [Usage :rocket:](#usage-rocket)
-   [Manifests :package:](#manifests-package)
-   [Team :soccer:](#team-soccer)
-   [LICENSE :balance_scale:](#license-balance_scale)

## Installation :zap:

Install [Scoop](https://scoop.sh) if you haven't already.

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Add this bucket.

```powershell
scoop bucket add norgateav-amx https://github.com/Norgate-AV/scoop-norgateav-amx
```

## Usage :rocket:

```powershell
scoop install <manifest>
```

## Manifests :package:

<!-- MANIFEST-TABLE:START - Do not remove or modify this section -->

| Package                                                                                                                  | Description                                                |
| ------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------- |
| [navfoundation-amx](https://github.com/Norgate-AV/NAVFoundation.Amx)                                                     | A collection of libraries for NetLinx software development |
| [navdatabase-amx-ce-series-interface](https://github.com/Norgate-AV/NAVDatabase.Amx.AmxCESeriesInterface)                | NetLinx module for AMX CE Series interfaces                |
| [navdatabase-amx-casio-projector](https://github.com/Norgate-AV/NAVDatabase.Amx.CasioProjector)                          | NetLinx module for Casio projectors                        |
| [navdatabase-amx-ctc-1402](https://github.com/Norgate-AV/NAVDatabase.Amx.CTC-1402)                                       | NetLinx module for AMX CTC-1402                            |
| [navdatabase-amx-config-from-file](https://github.com/Norgate-AV/NAVDatabase.Amx.ConfigFromFile)                         | NetLinx module for loading configuration from a file       |
| [navdatabase-amx-denon-dn-500av](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500AV)                            | NetLinx module for Denon DN-500AV                          |
| [navdatabase-amx-denon-dn-500bd](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500BD)                            | NetLinx module for Denon DN-500BD                          |
| [navdatabase-amx-denon-dn-500cb](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500CB)                            | NetLinx module for Denon DN-500CB                          |
| [navdatabase-amx-enova-dgx](https://github.com/Norgate-AV/NAVDatabase.Amx.EnovaDGX)                                      | NetLinx module for AMX Enova DGX Switchers                 |
| [navdatabase-amx-enova-dvx](https://github.com/Norgate-AV/NAVDatabase.Amx.EnovaDVX)                                      | NetLinx module for AMX Enova DVX Switchers                 |
| [navdatabase-amx-epson-esc-vp21-business](https://github.com/Norgate-AV/NAVDatabase.Amx.EpsonESC-VP21Business)           | NetLinx module for Epson ESC/VP21 Business Projectors      |
| [navdatabase-amx-extron-dvs605](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronDVS605)                              | NetLinx module for Extron DVS605                           |
| [navdatabase-amx-extron-dmp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronDMP)                                    | NetLinx module for Extron DMP range of DSP's               |
| [navdatabase-amx-extron-mls-100a](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSwitchMLS-100A)                    | NetLinx module for Extron MLS-100A                         |
| [navdatabase-amx-extron-mvc-121-plus](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronMVC121Plus)                    | NetLinx module for Extron MVC-121 Plus                     |
| [navdatabase-amx-extron-ssp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSSP)                                    | NetLinx module for Extron SSP-200                          |
| [navdatabase-amx-extron-sw-hdmi](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSwitchSW-HDMI)                      | NetLinx module for Extron SW-HDMI range of switchers       |
| [navdatabase-amx-extron-sw4-usb](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSW4USB)                             | NetLinx module for Extron SW4-USB                          |
| [navdatabase-amx-generic-camera-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericCameraUI)                       | NetLinx module for generic camera UI                       |
| [navdatabase-amx-generic-doccam-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericDocCamUI)                       | NetLinx module for generic document camera UI              |
| [navdatabase-amx-generic-ir-device](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericIRDevice)                       | NetLinx module for generic IR device UI                    |
| [navdatabase-amx-generic-projector-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericProjectorUI)                 | NetLinx module for generic projector UI                    |
| [navdatabase-amx-iiyama-te-xxxx-series-display](https://github.com/Norgate-AV/NAVDatabase.Amx.IiyamaTExxxxSeriesDisplay) | NetLinx module for Iiyama TExxxx series displays           |
| [navdatabase-amx-lg-display](https://github.com/Norgate-AV/NAVDatabase.Amx.LGxxDisplay)                                  | NetLinx module for LG displays                             |
| [navdatabase-amx-lightware-lw3](https://github.com/Norgate-AV/NAVDatabase.Amx.LightwareLW3)                              | NetLinx module for Lightware LW3 compatible devices        |
| [navdatabase-amx-lutron-homeworks](https://github.com/Norgate-AV/NAVDatabase.Amx.LutronHomeWorks)                        | NetLinx module for Lutron HomeWorks                        |
| [navdatabase-amx-lutron-quantum](https://github.com/Norgate-AV/NAVDatabase.Amx.LutronQuantum)                            | NetLinx module for Lutron Quantum                          |
| [navdatabase-amx-matrix-switcher-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.MatrixSwitcherUI)                     | NetLinx module for matrix switcher UI                      |
| [navdatabase-amx-metroplan-eyeline-pro](https://github.com/Norgate-AV/NAVDatabase.Amx.MetroplanEyelinePro)               | NetLinx module for Metroplan Eyeline Pro                   |
| [navdatabase-amx-ntp-client](https://github.com/Norgate-AV/NAVDatabase.Amx.NtpClient)                                    | NetLinx module for NTP client                              |
| [navdatabase-amx-nec-multi-sync-display](https://github.com/Norgate-AV/NAVDatabase.Amx.NECMultiSyncDisplay)              | NetLinx module for NEC MultiSync displays                  |
| [navdatabase-amx-panasonic-camera](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicCamera)                        | NetLinx module for Panasonic cameras                       |
| [navdatabase-amx-panasonic-display](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicDisplay)                      | NetLinx module for Panasonic displays                      |
| [navdatabase-amx-panasonic-projector](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicProjector)                  | NetLinx module for Panasonic projectors                    |
| [navdatabase-amx-pjlink](https://github.com/Norgate-AV/NAVDatabase.Amx.PJLink)                                           | NetLinx module for PJLink compatible devices               |
| [navdatabase-amx-samsung-sync-master-display](https://github.com/Norgate-AV/NAVDatabase.Amx.SamsungSyncMasterDisplay)    | NetLinx module for Samsung SyncMaster displays             |
| [navdatabase-amx-session-manager](https://github.com/Norgate-AV/NAVDatabase.Amx.SessionManager)                          | NetLinx module for managing user session times             |
| [navdatabase-amx-sharp-pn-70sc5](https://github.com/Norgate-AV/NAVDatabase.Amx.SharpPN-70SC5)                            | NetLinx module for Sharp PN-70SC5                          |
| [navdatabase-amx-sharp-pn-r703](https://github.com/Norgate-AV/NAVDatabase.Amx.SharpPN-R703)                              | NetLinx module for Sharp PN-R703                           |
| [navdatabase-amx-shure-mxa](https://github.com/Norgate-AV/NAVDatabase.Amx.ShureMXA)                                      | NetLinx module for Shure MXA range of microphones          |
| [navdatabase-amx-smart-display](https://github.com/Norgate-AV/NAVDatabase.Amx.SmartDisplay)                              | NetLinx module for Smart Displays                          |
| [navdatabase-amx-smart-sbid-7075](https://github.com/Norgate-AV/NAVDatabase.Amx.SmartDisplaySBID-7075)                   | NetLinx module for Smart SBID-7075                         |
| [navdatabase-amx-svsi-decoder](https://github.com/Norgate-AV/NAVDatabase.Amx.SVSIDecoder)                                | NetLinx module for SVSI decoders                           |
| [navdatabase-amx-visca-camera](https://github.com/Norgate-AV/NAVDatabase.Amx.ViscaCamera)                                | NetLinx module for VISCA compatible cameras                |
| [navdatabase-amx-vividtouch-display](https://github.com/Norgate-AV/NAVDatabase.Amx.VividTouchDisplay)                    | NetLinx module for VividTouch displays                     |
| [navdatabase-amx-wolfvision-visualizer](https://github.com/Norgate-AV/NAVDatabase.Amx.WolfVisionVisualizer)              | NetLinx module for WolfVision Visualizers                  |
| [navdatabase-amx-yamaha-bd-a1020](https://github.com/Norgate-AV/NAVDatabase.Amx.YamahaBD-A1020)                          | NetLinx module for Yamaha BD-A1020                         |

<!-- MANIFEST-TABLE:END -->

## Team :soccer:

This project is maintained by the following person(s) and a bunch of [awesome contributors](https://github.com/Norgate-AV/scoop-norgateav-av/graphs/contributors).

<table>
  <tr>
    <td align="center"><a href="https://github.com/damienbutt"><img src="https://avatars.githubusercontent.com/damienbutt?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Damien Butt</b></sub></a><br /></td>
  </tr>
</table>

## LICENSE :balance_scale:

[MIT](LICENSE)
