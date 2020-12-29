cask "dualcam" do
  version "1.0.1"
  sha256 "4474e9937bf0c2f9839df7a48691225ac5ff1efe19c5a54ea87a9b338fd55fb7"

  url "https://github.com/sjml/DualCam/releases/download/v#{version}/DualCam.zip"
  name "DualCam"
  desc "the most basic look-at-two-webcams-at-once implementation you could possibly imagine"
  homepage "https://github.com/sjml/DualCam"

  app "DualCam.app"
end
