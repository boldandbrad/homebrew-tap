class EuchreCli < Formula
  include Language::Python::Virtualenv

  desc "Play euchre in your terminal"
  homepage "https://boldandbrad.github.io/euchre-cli/"
  url "https://files.pythonhosted.org/packages/b6/19/0619bb4868c579b1f9e7197f5f31231da498b4c6b7de4c83e96388393a5d/euchre_cli-0.7.0.tar.gz"
  sha256 "3e54f9680981769c03cc793da88212de68af2ba73edea4c1025e25fa80e3ce00"
  license "MIT"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/9e/30/d87a423766b24db416a46e9335b9602b054a72b96a88a241f2b09b560fa8/loguru-0.7.2.tar.gz"
    sha256 "e671a53522515f34fd406340ee968cb9ecafbc4b36c679da03c18fd8d0bd51ac"
  end

  resource "names" do
    url "https://files.pythonhosted.org/packages/44/4e/f9cb7ef2df0250f4ba3334fbdabaa94f9c88097089763d8e85ada8092f84/names-0.3.0.tar.gz"
    sha256 "726e46254f2ed03f1ffb5d941dae3bc67c35123941c29becd02d48d0caa2a671"
  end

  def install
    # virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/euchre", "--version"
  end
end
