cask "dotfile-watcher" do
  version "1.0.4"
  sha256 "05a58f8396594973d3d6e2618435e8fc55ba30a0f0ae401a2fc6ef4061b1de2e"

  url "https://github.com/sjml/DotfileWatcher/releases/download/v#{version}/DotfileWatcher.zip"
  name "DotfileWatcher"
  desc "notify if anything's changed in a git-synced dotfile directory"
  homepage "https://github.com/sjml/DotfileWatcher"

  app "DotfileWatcher.app"
end
