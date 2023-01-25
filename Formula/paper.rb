class Paper < Formula
  desc "Shane's little paper-{writing|managing|building} utility"
  homepage "https://github.com/sjml/paper"
  url "https://github.com/sjml/paper/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "38d04f2d02aad80ba4d550001695828e4d1f79d2b2c27156ddcf214119663961"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pandoc"
  depends_on "tectonic"
  depends_on "gh" => :recommended

  def install
    ENV["PAPER_RESOURCES_DIR"] = share
    system "cargo", "install", *std_cargo_args

    share.install "resources/project_template"
    share.install "resources/scripts"

    bash_completion.install "resources/completions/paper.bash"
    fish_completion.install "resources/completions/paper.fish"
    zsh_completion.install "resources/completions/_paper"
  end

  test do
    system "#{bin}/paper", "new", "PaperTest"
    cd testpath/"PaperTest" do
      system "#{bin}/paper", "build"
      assert_predicate testpath/"PaperTest"/"output"/"[AUTHOR]_[MNEMONIC]_PaperTest.docx", :exist?
    end
  end
end
