class Aliasrc < Formula
  include Language::Python::Virtualenv

  desc "Keep your .zshrc/.bashrc in sync across all your devices"
  homepage "https://github.com/envomer/homebrew-alias-rc"
  url "https://files.pythonhosted.org/packages/c9/ef/bcf7c9b8d1821890efbef0633003d8aa9bd8782d81c3a8ee05e9843dc158/alias.rc-0.0.4.tar.gz"
  sha256 "2d712cda5e15eec28c0b6a48f862bc23a2410fc718ad390371e141565343823a"

  depends_on "python"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897/click-6.7.tar.gz"
    sha256 "f15516df478d5a56180fbf80e68f206010e6d160fc39fa508b65e035fd75130b"
  end

  resource "pycrypto" do
    url "https://files.pythonhosted.org/packages/60/db/645aa9af249f059cc3a368b118de33889219e0362141e75d4eaf6f80f163/pycrypto-2.6.1.tar.gz"
    sha256 "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"
  end

  resource "simple-crypt" do
    url "https://files.pythonhosted.org/packages/60/66/5bf6feb073f715a61492f8a6d444ad3d884ada71af317ce7a9c80bebee60/simple-crypt-4.1.7.tar.gz"
    sha256 "49462ab7ea4b080a8c10e362abfe35ecfa6dbe1e1c454ea36de7d2a71dce992f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    false
  end
end