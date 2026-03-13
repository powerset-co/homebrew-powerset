class ContactExporter < Formula
  include Language::Python::Virtualenv

  desc "Extract iMessage & WhatsApp contacts locally for Powerset"
  homepage "https://github.com/powerset-co/contact-exporter"
  url "https://github.com/powerset-co/contact-exporter/archive/513e73c.tar.gz"
  version "0.1.5"
  sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  license "MIT"

  depends_on "python@3.12"
  depends_on :macos

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.5.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "qrcode" do
    url "https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/c6/f3b320c27991c46f43ee9d856302c70dc2d0fb2dba4842ff739d5f46b393/rich-14.3.3.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "344604d46b19eb52192228d473402273968fca80c0fe67f21a29363ddc91c104"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/contact-exporter --version")
  end
end
