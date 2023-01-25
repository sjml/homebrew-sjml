class Paper < Formula
  desc "Shane's little paper-{writing|managing|building} utility"
  homepage "https://github.com/sjml/paper"
  url "https://github.com/sjml/paper/archive/refs/tags/v0.5.1a.tar.gz"
  sha256 "9e0b486d50d4cb133273ff92f0fcfedbcd04dc21cfe1b676f70e480dbc572374"
  license "MIT"

  bottle do
    root_url "https://github.com/sjml/homebrew-sjml/releases/download/paper-0.5.0"
    rebuild 1
    sha256                               monterey:     "c5d1738902810b5fb56f6ebb12587c8a6e38dddc7c7a39f617fd91769bc2048d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "492e57712f4fe0548d2f1dfb7dfe534ecf41188856e86dade1697c18b9f575fc"
  end

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
