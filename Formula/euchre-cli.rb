class EuchreCli < Formula
  include Language::Python::Virtualenv

  desc "Play euchre in your terminal"
  homepage "https://boldandbrad.github.io/euchre-cli/"
  url "https://files.pythonhosted.org/packages/c5/52/29e9dd078725c18dfe72327df236915e3c984b54e88eeec30fa6cdbe3a3e/euchre-cli-0.6.1.tar.gz"
  sha256 "09c863028214ae157a5a6f8cff29283550da22ec909a3dd171d86f4e94bdc206"
  license "MIT"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/6d/25/0d65383fc7b4f4ce9505d16773b2b2a9f0f465ef00ab337d66afff47594a/loguru-0.5.3.tar.gz"
    sha256 "b28e72ac7a98be3d28ad28570299a393dfcd32e5e3f6a353dec94675767b6319"
  end

  resource "names" do
    url "https://files.pythonhosted.org/packages/44/4e/f9cb7ef2df0250f4ba3334fbdabaa94f9c88097089763d8e85ada8092f84/names-0.3.0.tar.gz"
    sha256 "726e46254f2ed03f1ffb5d941dae3bc67c35123941c29becd02d48d0caa2a671"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/euchre", "--version"
  end
end
