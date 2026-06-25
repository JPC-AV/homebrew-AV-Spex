class AvSpex < Formula
  include Language::Python::Virtualenv

  desc "Python project for NMAAHC media conservation lab"
  homepage "https://github.com/JPC-AV/video_qc_jpc_av"
  url "https://github.com/JPC-AV/video_qc_jpc_av/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "35ad6866c2bce0485342e91af1c35d84774bbd1adb61f55495784c191b9342ee"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/JPC-AV/video_qc_jpc_av/releases/download/v1.1.0"
    sha256 arm64_sonoma: "0f62aeee97d6d8bc196afcd9e2be4c82f2ace2fffa88fe59ead99bc6654ac08f"
  end

  depends_on "python@3.13"
  depends_on "mkvtoolnix"

  resource "setuptools" do
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

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "plotly" do
    url "https://files.pythonhosted.org/packages/db/9e/31b2f0b8f2357cd5f3e992c76c3e4e85a5cbbad8b8c5f23d0684e3f4c608/plotly-5.23.0.tar.gz"
    sha256 "89e57d003a116303a34de6700862391367dd564222ab71f8531df70279fc0193"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/76/21/7d2a95e4bba9dc13d043ee156a356c0a8f0c6309dff6b21b4d71a073b8a8/numpy-2.2.6.tar.gz"
    sha256 "e29554e2bef54a90aa5cc07da6ce955accb83f21ab5de01a62c8478897b264fd"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/0f/37/6964b830433e654ec7485e45a00fc9a27cf868d622838f6b6d9c5ec0d532/scipy-1.15.3.tar.gz"
    sha256 "eae3cf522bc7df64b42cad3925c876e1b0b6c35c1337c93e12c0f366f55b0eaf"
  end

  resource "lazy-loader" do
    url "https://files.pythonhosted.org/packages/49/ac/21a1f8aa3777f5658576777ea76bfb124b702c520bbe90edf4ae9915eafa/lazy_loader-0.5.tar.gz"
    sha256 "717f9179a0dbed357012ddad50a5ad3d5e4d9a0b8712680d4e687f5e6e6ed9b3"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/6a/51/63fe664f3908c97be9d2e4f1158eb633317598cfa6e1fc14af5383f17512/networkx-3.6.1.tar.gz"
    sha256 "26b7c357accc0c8cde558ad486283728b65b6a95d85ee1cd66bafab4c8168509"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/8c/21/c2bcdd5906101a30244eaffc1b6e6ce71a31bd0742a01eb89e660ebfac2d/pillow-12.2.0.tar.gz"
    sha256 "a830b1a40919539d07806aa58e1b114df53ddd43213d9c8b75847eee6c0182b5"
  end

  resource "imageio" do
    url "https://files.pythonhosted.org/packages/b1/84/93bcd1300216ea50811cee96873b84a1bebf8d0489ffaf7f2a3756bab866/imageio-2.37.3.tar.gz"
    sha256 "bbb37efbfc4c400fcd534b367b91fcd66d5da639aaa138034431a1c5e0a41451"
  end

  resource "tifffile" do
    url "https://files.pythonhosted.org/packages/6c/3e/695c7ab56be57814e369c1f38bc3f64b9dea0a83e867d00c0c9d613a9929/tifffile-2026.5.2.tar.gz"
    sha256 "21b10227ede8493814a34676774797f721f487e36cb0530e7c3bd882caa87f5a"
  end

  resource "scikit-image" do
    url "https://files.pythonhosted.org/packages/a1/b4/2528bb43c67d48053a7a649a9666432dc307d66ba02e3a6d5c40f46655df/scikit_image-0.26.0.tar.gz"
    sha256 "f5f970ab04efad85c24714321fcc91613fcb64ef2a892a13167df2f3e59199fa"
  end

  resource "opencv-python-headless" do
    url "https://files.pythonhosted.org/packages/36/2f/5b2b3ba52c864848885ba988f24b7f105052f68da9ab0e693cc7c25b0b30/opencv-python-headless-4.11.0.86.tar.gz"
    sha256 "996eb282ca4b43ec6a3972414de0e2331f5d9cda2b41091a49739c19fb843798"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/26/91/d49359a21893183ed2a5b6c76bec40e0b1dcbf8ca148f864d134897cfc75/matplotlib-3.10.3.tar.gz"
    sha256 "2f82d2c5bb7ae93aaaa4cd42aca65d76ce6376f83304fa3a630b569aca274df0"
  end

  resource "PyQt6" do
    url "https://files.pythonhosted.org/packages/source/P/PyQt6/pyqt6-6.9.1.tar.gz"
    sha256 "50642be03fb40f1c2111a09a1f5a0f79813e039c15e78267e6faaf8a96c1c3a6"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")

    venv.pip_install resources.reject { |r|
      r.name == "plotly" || r.name == "lxml" || r.name == "PyQt6" ||
      r.name == "numpy" || r.name == "scipy" || r.name == "opencv-python-headless" ||
      r.name == "matplotlib" || r.name == "scikit-image" || r.name == "pillow"
    }

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "plotly==5.23.0"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "pillow==12.2.0"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "lxml==5.3.1"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "numpy==2.2.6"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "scipy==1.15.3"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "opencv-python-headless==4.11.0.86"

    system libexec/"bin/python", "-m", "pip", "install", "--only-binary", ":all:", "matplotlib==3.10.3"

    system libexec/"bin/python", "-m", "pip", "install", "--no-deps", "--only-binary", ":all:", "scikit-image==0.26.0"

    system libexec/"bin/python", "-m", "pip", "install", "--only-binary", ":all:", "PyQt6==6.9.1", "PyQt6-Qt6==6.9.1"

    venv.pip_install_and_link buildpath

    bin.install_symlink libexec/"bin/av-spex"
    bin.install_symlink libexec/"bin/av-spex-gui"
  end

  test do
    system bin/"av-spex", "--version"
  end
end
