class AvSpex < Formula
  include Language::Python::Virtualenv

  desc "Python project for NMAAHC media conservation lab"
  homepage "https://github.com/JPC-AV/video_qc_jpc_av"
  url "https://github.com/JPC-AV/video_qc_jpc_av/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "a6591386b3342a334731d540a62e36246fbb3bf09fe7f18c51b2fdc4ed48498a"
  license "GPL-3.0-only"

  depends_on "python@3.10"
  depends_on "pyqt"
  depends_on "qt@6"
  
  resource "setuptools" do # needed for pyqt6 
    url "https://files.pythonhosted.org/packages/92/ec/089608b791d210aec4e7f97488e67ab0d33add3efccb83a056cbafe3a2a6/setuptools-75.8.0.tar.gz"
    sha256 "c5afc8f407c626b8313a86e10311dd3f661c6cd9c09d4bf8c15c0e11f9f2b0e6"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "art" do
    url "https://files.pythonhosted.org/packages/b6/15/6c4ac6bf544a01230bad5b45ce4f624051b9dc9567875da05cfdbfc2cafa/art-6.1.tar.gz"
    sha256 "6ab3031e3b7710039e73497b0e750cadfe04d4c1279ce3a123500dbafb9e1b64"
  end

  resource "colorlog" do
    url "https://files.pythonhosted.org/packages/78/6b/4e5481ddcdb9c255b2715f54c863629f1543e97bc8c309d1c5c131ad14f2/colorlog-6.7.0.tar.gz"
    sha256 "bd94bd21c1e13fac7bd3153f4bc3a7dc0eb0974b8bc2fdf1a989e474f6e582e5"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/ef/f6/c15ca8e5646e937c148e147244817672cf920b56ac0bf2cc1512ae674be8/lxml-5.3.1.tar.gz"
    sha256 "106b7b5d2977b339f1e97efe2778e2ab20e99994cbb0ec5e55771ed0795920c8"
  end

  resource "plotly" do
    url "https://files.pythonhosted.org/packages/db/9e/31b2f0b8f2357cd5f3e992c76c3e4e85a5cbbad8b8c5f23d0684e3f4c608/plotly-5.23.0.tar.gz"
    sha256 "89e57d003a116303a34de6700862391367dd564222ab71f8531df70279fc0193"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    
    # Install all Python dependencies including PyQt6-sip but excluding PyQt6
    venv.pip_install resources.reject { |r| r.name == "plotly" || r.name == "lxml" }

    # Install plotly using direct pip command instead of venv.pip_install
    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "plotly==5.23.0"

    # Install lxml without dependencies
    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "lxml==5.3.1"

    # Install the package itself
    venv.pip_install_and_link buildpath
    
    # Create executables
    bin.install_symlink libexec/"bin/av-spex"
    bin.install_symlink libexec/"bin/av-spex-gui"
  end

  test do
    system bin/"av-spex", "--version"
  end
end
