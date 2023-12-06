# archlinux-kud/packages

This repository packs PKGBUILDs and modifications over PKGBUILDs from [AUR](https://aur.archlinux.org) that will almost certainly never going to land on AUR at all.

PKGBUILDs may be added as submodules if they already exist as separate repositories on [archlinux-kud](https://github.com/archlinux-kud) organization prior to this repository being existed.

Note that some interventions are merely about prepending `custom:` before SPDX identifer or full name of such license(s) if license file(s) don't exist as part of [`licenses`](https://archlinux.org/packages/core/any/licenses/) package.


## Directory structure

```
(root)
|-- build # (custom PKGBUILDs are hosted here)
| |-- pkgname
| | |-- PKGBUILD
| | |-- .SRCINFO
| | \-- (all supporting files)
| |
| \-- (all other packages)
|
|-- intervene
| |-- pkgname.diff
| \-- (all other PKGBUILD diffs)
|
|-- .gitignore
|
\-- .gitmodules # (out of tree repositories)
```


## Update frequency

This repository will be updated at least once a month, preferably during weekends in Central Indonesian Time (WITA), except in any worst-case scenario. Don't blame me in case such scenario happens.
