class HdrResize < Formula
  desc "Resizes HDR images in JPEG or HEIC format while retaining their dynamic range"
  homepage "https://github.com/sjml/hdr-resize"
  url "https://github.com/sjml/hdr-resize/archive/refs/tags/0.1.2.tar.gz"
  sha256 "706476c8f5f5dc088d3bb5f7d5ed0f6bf66638a5207e2432c365e2e1fe33dcdb"
  license "MIT"

  def install
    system "swift", "build",
      "--configuration", "release",
      "--disable-sandbox"

    bin.install ".build/release/hdr-resize"

    bash_output = Utils.safe_popen_read("#{bin}/hdr-resize", "--generate-completion-script", "bash")
    (bash_completion/"hdr-resize").write bash_output

    fish_output = Utils.safe_popen_read("#{bin}/hdr-resize", "--generate-completion-script", "fish")
    (fish_completion/"hdr-resize.fish").write fish_output

    zsh_output = Utils.safe_popen_read("#{bin}/hdr-resize", "--generate-completion-script", "zsh")
    (zsh_completion/"_hdr-resize").write zsh_output
  end
end
