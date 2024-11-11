class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c1df42b2984d8582ca3163773deeea1139132a1a66e5fb91214e07344bc35343"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
