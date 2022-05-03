class MakeyCli < Formula
  include Language::Python::Virtualenv

  desc "CLI passkey maker."
  homepage "https://boldandbrad.github.io/makey-cli/"
  url "https://files.pythonhosted.org/packages/c5/05/3e497a20207b6140d2478aa8a09f732e20b9a25e3df135fbac786508bcfe/makey-cli-1.1.0.tar.gz"
  sha256 "2d79c5b496be5555f688ebf6096d34a37bb4bc2aef0cbb9517adc119de89bd65"
  license "MIT"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/makey", "--version"
  end
end