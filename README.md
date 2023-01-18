# Shane's Personal Homebrew Tap

Just some formulae and casks to make tools I made easily installable.

## Available Tools
* `paper`: A command-line tool for tracking references and compiling a finished academic paper from Markdown. ([repo](https://github.com/sjml/paper))
* `beschi`: A bit-packing code generator for message passing between different languages. Like a less-capable flatbuffers, for simpler client code. ([repo](https://github.com/sjml/beschi))

## Available Apps
* `dotfile-watcher`: A program that watches a given directory and pops a menu notifier if there's uncommited changes in it. Useful if you keep your dotfiles in Git and want to know if anything gets changed behind your back. ([repo](https://github.com/sjml/DotfileWatcher))
* `dualcam`: The simplest way to look at two USB cameras at once. ([repo](https://github.com/sjml/DualCam))

## To install
If you don't already have Homebrew installed, run this:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then...

### Formula
`brew install sjml/sjml/<formula>`

Or `brew tap sjml/sjml` and then `brew install <formula>`.

### Casks
`brew install --cask sjml/sjml/<cask>`

Or `brew tap sjml/sjml` and then `brew install --cask <cask>`.
