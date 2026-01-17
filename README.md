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
sudo scoop install <manifest>
```

## Manifests :package:

<!-- MANIFEST-TABLE:START - Do not remove or modify this section -->

| Package | Description |
| ------- | ----------- |
| [navfoundation-amx](https://github.com/Norgate-AV/NAVFoundation.Amx) | A collection of libraries for NetLinx software development |
| [amx-rms-sdk](https://github.com/Norgate-AV/RMS-SDK) | AMX RMS SDK |
| [navdatabase-amx-audac-smq](https://github.com/Norgate-AV/NAVDatabase.Amx.AudacSMQ) | NetLinx module for Audac SMQ series amplifiers |
| [navdatabase-amx-casio-projector](https://github.com/Norgate-AV/NAVDatabase.Amx.CasioProjector) | Netlinx module for Casio projectors |
| [navdatabase-amx-ce-series-interface](https://github.com/Norgate-AV/NAVDatabase.Amx.AmxCeSeriesInterface) | NetLinx module for AMX CE Series interfaces |
| [navdatabase-amx-cloud-config](https://github.com/Norgate-AV/NAVDatabase.Amx.CloudConfig) | NetLinx module for fetching remote config files |
| [navdatabase-amx-config-from-file](https://github.com/Norgate-AV/NAVDatabase.Amx.ConfigFromFile) | NetLinx module for reading configuration from a file |
| [navdatabase-amx-ctc-1402](https://github.com/Norgate-AV/NAVDatabase.Amx.AMX-CTC-1402) | NetLinx module for AMX CTC-1402 switchers |
| [navdatabase-amx-denon-dn-500av](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500AV) | NetLinx module for Denon DN-500AV |
| [navdatabase-amx-denon-dn-500bd](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500BD) | NetLinx module for Denon DN-500BD |
| [navdatabase-amx-denon-dn-500cb](https://github.com/Norgate-AV/NAVDatabase.Amx.DenonDN-500CB) | Netlinx module for Denon DN-500CB |
| [navdatabase-amx-enova-dgx](https://github.com/Norgate-AV/NAVDatabase.Amx.EnovaDGX) | Netlinx module for Enova DGX switchers |
| [navdatabase-amx-enova-dvx](https://github.com/Norgate-AV/NAVDatabase.Amx.EnovaDVX) | NetLinx module for AMX Enova DVX Switchers |
| [navdatabase-amx-epson-esc-vp21-business](https://github.com/Norgate-AV/NAVDatabase.Amx.EpsonESC-VP21Business) | NetLinx module for Epson ESC/VP21 Business projector control |
| [navdatabase-amx-event-scheduler](https://github.com/Norgate-AV/NAVDatabase.Amx.EventScheduler) | NetLinx module for scheduling events |
| [navdatabase-amx-extron-dmp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronDMP) | NetLinx module for Extron DMP range of DSP's |
| [navdatabase-amx-extron-dvs605](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronDVS605) | NetLinx module for Extron DVS 605 |
| [navdatabase-amx-extron-mls-100a](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSwitchMLS100A) | Netlinx module for Extron MLS 100A |
| [navdatabase-amx-extron-mvc-121-plus](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronMVC121Plus) | Netlinx module for Extron MVC 121 Plus |
| [navdatabase-amx-extron-ssp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSSP) | NetLinx module for Extron SSP-200 |
| [navdatabase-amx-extron-sw-hdmi](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSwitchSW-HDMI) | Netlinx module for Extron SW HDMI switchers |
| [navdatabase-amx-extron-sw4-usb](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSW4USB) | Netlinx module for Extron SW4 USB switchers |
| [navdatabase-amx-generic-camera-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericCameraUI) | NetLinx module for a generic camera user interface |
| [navdatabase-amx-generic-doccam-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericDocCamUI) | NetLinx module for a generic document camera user interface |
| [navdatabase-amx-generic-ir-device](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericIRDevice) | NetLinx module for a generic IR device user interface |
| [navdatabase-amx-generic-projector-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.GenericProjectorUI) | NetLinx module for a generic projector user interface |
| [navdatabase-amx-iiyama-te-xxxx-series-display](https://github.com/Norgate-AV/NAVDatabase.Amx.IiyamaTExxxxSeriesDisplay) | Netlinx module for Iiyama TExxxx series displays |
| [navdatabase-amx-lg-display](https://github.com/Norgate-AV/NAVDatabase.Amx.LGxxDisplay) | Netlinx module for LG displays |
| [navdatabase-amx-lightware-lw3](https://github.com/Norgate-AV/NAVDatabase.Amx.LightwareLW3) | NetLinx module for Lightware LW3 compatible devices |
| [navdatabase-amx-lutron-homeworks](https://github.com/Norgate-AV/NAVDatabase.Amx.LutronHomeworks) | Netlinx module for Lutron Homeworks lighting |
| [navdatabase-amx-lutron-quantum](https://github.com/Norgate-AV/NAVDatabase.Amx.LutronQuantum) | Netlinx module for Lutron Quantum lighting |
| [navdatabase-amx-matrix-switcher-ui](https://github.com/Norgate-AV/NAVDatabase.Amx.MatrixSwitcherUI) | Netlinx module for a matrix switcher user interface |
| [navdatabase-amx-metroplan-eyeline-pro](https://github.com/Norgate-AV/NAVDatabase.Amx.MetroplanEyelinePro) | Netlinx module for Metroplan Eyeline Pro electric screens |
| [navdatabase-amx-nec-multi-sync-display](https://github.com/Norgate-AV/NAVDatabase.Amx.NECMultiSyncDisplay) | Netlinx module for NEC MultiSync displays |
| [navdatabase-amx-nmx-prs-n7142](https://github.com/Norgate-AV/NAVDatabase.Amx.AMX-NMX-PRS-N7142) | NetLinx module for AMX NMX-PRS-N7142 |
| [navdatabase-amx-ntp-client](https://github.com/Norgate-AV/NAVDatabase.Amx.NtpClient) | NetLinx module for NTP client |
| [navdatabase-amx-panasonic-camera](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicCamera) | NetLinx module for Panasonic cameras |
| [navdatabase-amx-panasonic-display](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicDisplay) | NetLinx module for Panasonic displays |
| [navdatabase-amx-panasonic-projector](https://github.com/Norgate-AV/NAVDatabase.Amx.PanasonicProjector) | NetLinx module for Panasonic projectors |
| [navdatabase-amx-pjlink](https://github.com/Norgate-AV/NAVDatabase.Amx.PJLink) | Netlinx module for controlling PJLink devices |
| [navdatabase-amx-samsung-sync-master-display](https://github.com/Norgate-AV/NAVDatabase.Amx.SamsungSyncMasterDisplay) | Netlinx module for Samsung SyncMaster displays |
| [navdatabase-amx-session-manager](https://github.com/Norgate-AV/NAVDatabase.Amx.SessionManager) | NetLinx module for managing user session times |
| [navdatabase-amx-sharp-pn-70sc5](https://github.com/Norgate-AV/NAVDatabase.Amx.SharpPN-70SC5) | Netlinx module for Sharp PN-70SC5 displays |
| [navdatabase-amx-sharp-pn-e702](https://github.com/Norgate-AV/NAVDatabase.Amx.SharpPN-E702) | NetLinx module for Sharp PN-E702 |
| [navdatabase-amx-sharp-pn-r703](https://github.com/Norgate-AV/NAVDatabase.Amx.SharpPN-R703) | Netlinx module for Sharp PN-R703 displays |
| [navdatabase-amx-shure-mxa](https://github.com/Norgate-AV/NAVDatabase.Amx.ShureMXA) | NetLinx module for Shure MXA range of microphones |
| [navdatabase-amx-smart-display](https://github.com/Norgate-AV/NAVDatabase.Amx.SmartDisplay) | Netlinx module for Smart displays |
| [navdatabase-amx-smart-sbid-7075](https://github.com/Norgate-AV/NAVDatabase.Amx.SmartDisplaySBID-7075) | Netlinx module for Smart SBID-7075 displays |
| [navdatabase-amx-solecis-switcher](https://github.com/Norgate-AV/NAVDatabase.Amx.SolecisSwitcher) | NetLinx module for AMX Solecis Switcher |
| [navdatabase-amx-sony-display-rs232](https://github.com/Norgate-AV/NAVDatabase.Amx.SonyDisplayRS232) | NetLinx module for Sony displays via RS232 |
| [navdatabase-amx-svsi-decoder](https://github.com/Norgate-AV/NAVDatabase.Amx.SVSIDecoder) | Netlinx module for SVSI Decoder |
| [navdatabase-amx-visca-camera](https://github.com/Norgate-AV/NAVDatabase.Amx.ViscaCamera) | NetLinx module for Visca compatible cameras |
| [navdatabase-amx-vividtouch-display](https://github.com/Norgate-AV/NAVDatabase.Amx.VividTouchDisplay) | Netlinx module for VividTouch displays |
| [navdatabase-amx-wolfvision-visualizer](https://github.com/Norgate-AV/NAVDatabase.Amx.WolfVisionVisualizer) | NetLinx module for WolfVision Visualizer |
| [navdatabase-amx-yamaha-bd-a1020](https://github.com/Norgate-AV/NAVDatabase.Amx.YamahaBD-A1020) | NetLinx module for Yamaha BD-A1020 |

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
