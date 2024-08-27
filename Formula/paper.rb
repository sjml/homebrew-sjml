class Paper < Formula
  desc "Shane's little paper-{writing|managing|building} utility"
  homepage "https://github.com/sjml/paper"
  url "https://github.com/sjml/paper/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "30432e5fbf875c3ba65b2be5a173d911678cb82126adb291887d2020a9962240"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tectonic"
  depends_on "gh" => :recommended

  def install
    ENV["PAPER_RESOURCES_DIR"] = pkgshare
    system "cargo", "install", *std_cargo_args

    pkgshare.install "resources/project_template"
    pkgshare.install "resources/scripts"

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
