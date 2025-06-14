class HdrResize < Formula
  desc "Resizes HDR images in JPEG or HEIC format while retaining their dynamic range"
  homepage "https://github.com/sjml/hdr-resize"
  url "https://github.com/sjml/hdr-resize/archive/refs/tags/0.1.1.tar.gz"
  sha256 "ad0cefb15a125b914b94165537b6c32ed5ff49b0e24a1a29affa0e8c5ad47808"
  license "MIT"

  def install
    system "swift", "build",
      "--configuration", "release",
      "--disable-sandbox"

    bin.install ".build/release/hdr-resize"
  end
end
