# Twitter Miiverse Yeah! Auto Paste

## Automatically paste an image of your choosing to any text box that allows pasting an image to it, such as Tweeting on "X" (fk u elon) or replying to someone on Discord.

### Requires a macro/hotkey software.

### You can use a macro or hotkey for your keyboard, mouse, Elgato Stream Deck etc.

I made this during the Twitter trend after Elon removed publicly visible likes, where everyone started replying with different images of the Miiverse "Yeah!" button as an alternative way to publicly show their likes again.

## Requirements

- **Windows 10** or newer _(sorry linux users)_

- **Powershell 7.4** or newer _(will install itself during either of the installation methods below)_

**If you are using any anti-virus software, please disable it during installation, and exclude the folder that contains these files before you re-enable the anti-virus.** This is required by the tool [Cmdow](https://ritchielawrence.github.io/cmdow), which is not included in this repository, but is instead downloaded during setup. For more info about why this anti-virus exception is necessary, read [this](https://ritchielawrence.github.io/cmdow/#is-cmdow-malware).

## ▶ **Automatic Installation** ◀

1. **Download and run the setup.exe from [the latest release](https://github.com/NanoBunTV/TwitterMiiverseYeahAutoPaste/releases/latest).**

2. **Create a keybind using your preferred macro software that runs a batch fine in the folder that was installed, at `[USER]\Documents\Twitter Miiverse Yeah! Auto Paste` by default.** Your keyboard or mouse manufacturer may have a hotkey/macro software, or you can find some tool online, or buy an Elgato Stream Deck, or use literally ANY software or tool that can execute a file.

3. **Replace any PNG in the main folder with whatever image you want to use instead!** The script is specifically expecting a file named `yeah0.png`, but obviously with a different number at the end (if you need a good file conversion software, check out [this open source file converter tool](https://file-converter.io), it's really good).

4. If you want to have more than three hotkeys so you can use all your favorite Yeah! reaction images, run `CREATE Additional Script.bat` in the TOOLS folder.

For more "Yeah!" react images to use, check out the `random-miiverse-yeah-images` folder in this repository. This folder is not included during setup.

## License information and all that silly legal stuff

Most of this project is licensed under [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.html) or later, unless otherwise stated per the following exceptions.

- The Miiverse name, icon and "Yeah!" image are property of Nintendo Co., Ltd ( 任天堂株式会社 ) of which NanoBunTV is not affiliated with nor endorsed by.
- [Cmdow](https://ritchielawrence.github.io/cmdow/) - Copyright © 2014 Ritchie Lawrence. Licensed under the [MIT License](https://opensource.org/license/mit). When running `WDExceptionSetup.ps1` (required and used by both installation methods), it will download Cmdow and exclude it from being deleted by Windows Defender.
- [Elevate](https://github.com/jpassing/elevate) - Copyright © 2007 Johannes Passing. Licensed under the [MIT License](https://opensource.org/license/mit), or maybe [LGPL-2.1](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html) or later, as the exact license is still [disputed](https://github.com/jpassing/elevate/issues/2).
- [NirCmd](https://www.nirsoft.net/utils/nircmd.html) - Copyright © 2003-2024 Nir Sofer. "This utility is released as freeware. You are allowed to freely distribute this utility via floppy disk, CD-ROM, Internet, or in any other way, as long as you don't charge anything for this. If you distribute this utility, you must include all files in the distribution package, without any modification!"
- `InstallWingetAndPrerequisites.ps1` contains portions of code from [winutil](https://github.com/ChrisTitusTech/winutil) - Copyright © 2022 Chris Titus. Licensed under the [MIT License](https://opensource.org/license/mit).
- I do not own any of the images in the `random-miiverse-yeah-images` folder. The images are property of their respective owners and/or artists. I downloaded all of these images from random places online.

If you are the owner of any content in this repository that you wish to be removed, send an email to [contact@nanobun.tv](mailto:contact@nanobun.tv) with clear proof that you are the owner of the content and the reason it needs to be removed.
