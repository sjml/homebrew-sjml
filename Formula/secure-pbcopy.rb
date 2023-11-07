class SecurePbCopy < Formula
  desc "pbcopy(1) replacement that marks data as confidential"
  homepage "https://github.com/sjml/secure-pbcopy"
  url "https://github.com/sjml/secure-pbcopy/archive/refs/tags/v2019.06.18.tar.gz"
  sha256 "396a6318fddbcdba82def329bd9d43e10506eebde22e04a620e5a6521a7420b4"
  license "CC0-1.0"

  def install
    system "make", "install"
  end

  test do
  end
end
