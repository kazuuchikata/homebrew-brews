class Itermocil < Formula
  include Language::Python::Virtualenv

  desc "Allows you setup pre-configured layouts of panes in iTerm2"
  homepage "https://github.com/kazuuchikata/itermocil"
  url "https://github.com/kazuuchikata/itermocil/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "34014b76c99ee7d8a42849c1fc324dc34c302780efe0a230148c4285ef417bd7"
  license "MIT"

  depends_on "python@3.10"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/itermocil", "-h"
  end
end
