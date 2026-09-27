class Treepeat < Formula
  include Language::Python::Virtualenv

  desc "Find similar or duplicate code blocks via tree-sitter AST analysis"
  homepage "https://github.com/dsummersl/treepeat"
  url "https://files.pythonhosted.org/packages/7b/e8/15168d647719d0e5db0556ffffe7fa59df3f19b298d4396db38a9f6d1a58/treepeat-0.9.0.tar.gz"
  sha256 "9128ebfabcff88ee928281c31e2f4f3b91a708f42f8b82fb2b5b70ddaf1b96bb"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :pypi
  end

  depends_on "libmagic"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "detect", shell_output("#{bin}/treepeat --help")
  end
end
