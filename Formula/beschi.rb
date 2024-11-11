class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "c5dbcbd5394865330ef3d7ecf507ba36e94b6f1b4a84b9b03ed97ff6041acacf"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
