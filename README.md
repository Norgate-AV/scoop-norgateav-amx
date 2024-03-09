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

| Package                                                                               | Description                                                |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| [navfoundation-amx](https://github.com/Norgate-AV/NAVFoundation.Amx)                  | A collection of libraries for NetLinx software development |
| [navdatabase-amx-extron-dmp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronDMP) | NetLinx module for Extron DMP range of DSP's               |
| [navdatabase-amx-extron-ssp](https://github.com/Norgate-AV/NAVDatabase.Amx.ExtronSSP) | NetLinx module for Extron SSP-200                          |

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
