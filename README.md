# Warudo Editor Wrapper
Quick and lazy wrapper to start the Warudo Editor with Linux Electron.

<p align="center" dir="auto"><img 
    src="assets/warudo-editor-wrapper-logo-small.png" 
    alt="Our logo">
</img></p>

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/madalee-com/warudo-editor-wrapper/godot-ci.yaml)
![GitHub Release](https://img.shields.io/github/v/release/madalee-com/warudo-editor-wrapper?include_prereleases&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NDAgNTEyIj48IS0tIUZvbnQgQXdlc29tZSBGcmVlIHY3LjEuMCBieSBAZm9udGF3ZXNvbWUgLSBodHRwczovL2ZvbnRhd2Vzb21lLmNvbSBMaWNlbnNlIC0gaHR0cHM6Ly9mb250YXdlc29tZS5jb20vbGljZW5zZS9mcmVlIENvcHlyaWdodCAyMDI2IEZvbnRpY29ucywgSW5jLi0tPjxwYXRoIGZpbGw9IiNmNmY1ZjQiIGQ9Ik01NjAuMyAyMzcuMmMxMC40IDExLjggMjguMyAxNC40IDQxLjggNS41IDE0LjctOS44IDE4LjctMjkuNyA4LjktNDQuNGwtNDgtNzJjLTIuOC00LjItNi42LTcuNy0xMS4xLTEwLjJMMzUxLjQgNC43Yy0xOS4zLTEwLjctNDIuOC0xMC43LTYyLjIgMEw4OC44IDExNmMtNS40IDMtOS43IDcuNC0xMi42IDEyLjhMMjcuNyAyMTguN2MtMTIuNiAyMy40LTMuOCA1Mi41IDE5LjYgNjUuMWwzMyAxNy43IDAgNTMuM2MwIDIzIDEyLjQgNDQuMyAzMi40IDU1LjdsMTc2IDk5LjdjMTkuNiAxMS4xIDQzLjUgMTEuMSA2My4xIDBsMTc2LTk5LjdjMjAuMS0xMS40IDMyLjQtMzIuNiAzMi40LTU1LjdsMC0xMTcuNXptLTI0MC05LjhMMTcwLjIgMTQ0IDMyMC4zIDYwLjYgNDcwLjQgMTQ0IDMyMC4zIDIyNy40em0tNDEuNSA1MC4ybC0yMS4zIDQ2LjItMTY1LjgtODguOCAyNS40LTQ3LjIgMTYxLjcgODkuOHoiLz48L3N2Zz4=)
![Release Date](https://img.shields.io/github/release-date-pre/madalee-com/warudo-editor-wrapper?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0NDggNTEyIj48IS0tIUZvbnQgQXdlc29tZSBGcmVlIHY3LjEuMCBieSBAZm9udGF3ZXNvbWUgLSBodHRwczovL2ZvbnRhd2Vzb21lLmNvbSBMaWNlbnNlIC0gaHR0cHM6Ly9mb250YXdlc29tZS5jb20vbGljZW5zZS9mcmVlIENvcHlyaWdodCAyMDI2IEZvbnRpY29ucywgSW5jLi0tPjxwYXRoIGZpbGw9IiNmZmZmZmYiIGQ9Ik0xMjggMEMxMTAuMyAwIDk2IDE0LjMgOTYgMzJsMCAzMi0zMiAwQzI4LjcgNjQgMCA5Mi43IDAgMTI4bDAgNDggNDQ4IDAgMC00OGMwLTM1LjMtMjguNy02NC02NC02NGwtMzIgMCAwLTMyYzAtMTcuNy0xNC4zLTMyLTMyLTMycy0zMiAxNC4zLTMyIDMybDAgMzItMTI4IDAgMC0zMmMwLTE3LjctMTQuMy0zMi0zMi0zMnpNMCAyMjRMMCA0MTZjMCAzNS4zIDI4LjcgNjQgNjQgNjRsMzIwIDBjMzUuMyAwIDY0LTI4LjcgNjQtNjRsMC0xOTItNDQ4IDB6Ii8+PC9zdmc+)
![godot version](https://img.shields.io/badge/godot-v4.6.1-blue?logo=godotengine&logoColor=f5f5f5)
![Downloads](https://img.shields.io/github/downloads/madalee-com/warudo-editor-wrapper/total?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0NDggNTEyIj48IS0tIUZvbnQgQXdlc29tZSBGcmVlIHY3LjEuMCBieSBAZm9udGF3ZXNvbWUgLSBodHRwczovL2ZvbnRhd2Vzb21lLmNvbSBMaWNlbnNlIC0gaHR0cHM6Ly9mb250YXdlc29tZS5jb20vbGljZW5zZS9mcmVlIENvcHlyaWdodCAyMDI2IEZvbnRpY29ucywgSW5jLi0tPjxwYXRoIGZpbGw9IiNmZmZmZmYiIGQ9Ik0yNTYgMzJjMC0xNy43LTE0LjMtMzItMzItMzJzLTMyIDE0LjMtMzIgMzJsMCAyMTAuNy00MS40LTQxLjRjLTEyLjUtMTIuNS0zMi44LTEyLjUtNDUuMyAwcy0xMi41IDMyLjggMCA0NS4zbDk2IDk2YzEyLjUgMTIuNSAzMi44IDEyLjUgNDUuMyAwbDk2LTk2YzEyLjUtMTIuNSAxMi41LTMyLjggMC00NS4zcy0zMi44LTEyLjUtNDUuMyAwTDI1NiAyNDIuNyAyNTYgMzJ6TTY0IDMyMGMtMzUuMyAwLTY0IDI4LjctNjQgNjRsMCAzMmMwIDM1LjMgMjguNyA2NCA2NCA2NGwzMjAgMGMzNS4zIDAgNjQtMjguNyA2NC02NGwwLTMyYzAtMzUuMy0yOC43LTY0LTY0LTY0bC00Ni45IDAtNTYuNiA1Ni42Yy0zMS4yIDMxLjItODEuOSAzMS4yLTExMy4xIDBMMTEwLjkgMzIwIDY0IDMyMHptMzA0IDU2YTI0IDI0IDAgMSAxIDAgNDggMjQgMjQgMCAxIDEgMC00OHoiLz48L3N2Zz4=)
![GitHub License](https://img.shields.io/github/license/madalee-com/warudo-editor-wrapper?logo=gplv3)

## Features

- **Just starts Warudo editor:** Start the native Linux Warudo editor without any error messages.

## Quick Start

- Download/extract [Linux Electron](https://github.com/electron/electron/releases/download/v39.2.6/electron-v39.2.6-linux-x64.zip) to the `Warudo/Warudo_Data/StreamingAssets/Clients/win-x64/` path.  Let it overwrite anything it wants to.
- [Download](https://github.com/madalee-com/warudo-editor-wrapper/releases) and extract the latest release of Warudo Editor Wrapper to the same path, and let it overwrite `warudo-client-electron.exe`
- When pressing Esc in Warudo, the native Linux version of the editor should load.

## Some Notes

### Why Godot?
It works on everything, development is fully self contained between Godot and the source code, and we're lazy.  Feel free to implement something better or smaller or whatever.

## Building/Compiling
1. Clone the repo `git clone https://github.com/madalee-com/warudo-editor-wrapper`
2. Download and run [Godot 4.6.1](https://godotengine.org/) or newer
3. Open the project.godot file
4. Click Project->Export (You need the latest Export Templates for Godot, available on the Export page)

## Contributing

We welcome contributions! Open an issue or a PR.

**Quick contribution guide:**

1. Fork the repo
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

## Support

- Check [existing issues](./issues)
- Message us on Discord @madalee
- Interact with us on [Twitch](https://www.twitch.tv/madalee_com)
- Open a [new issue](./issues/new)

## License

This project is provided under the GNU General Public License v3.0. See the [LICENSE](./blob/master/LICENSE) file for more information.

## Acknowledgments

- This project is not officially associated with Electron nor Warudo
- [Godot 4.6.1](link) - The application/game framework