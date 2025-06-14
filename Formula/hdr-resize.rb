class HdrResize < Formula
  desc "Resizes HDR images in JPEG or HEIC format while retaining their dynamic range"
  homepage "https://github.com/sjml/hdr-resize"
  url "https://github.com/sjml/hdr-resize/archive/refs/tags/0.1.0.tar.gz"
  sha256 "d9dd2ed24522764bd51719ba2f413256ee692258741018575305fc50e9406f6e"
  license "MIT"

  def install
    system "swift", "build",
      "--configuration", "release",
      "--disable-sandbox"

    bin.install ".build/release/hdr-resize"
  end
end
