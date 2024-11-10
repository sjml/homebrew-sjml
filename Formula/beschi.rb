class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "19198d1043b4e3f37791fa0fd5e0f27588f30b188a05ff7f0b1a7a2923b020a6"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
