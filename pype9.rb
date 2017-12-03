class Pype9 < Formula
  desc "Python pipelines for simulating neural models described in 9ML with Neuron and NEST simulators"
  homepage "pype9.readthedocs.io"
  url "https://github.com/NeuralEnsemble/pype9/archive/0.2.tar.gz"
  sha256 "21a873f3328b5b1e0c8523696147006c372c030a475c30423cf2dcbf36aa6d93"
  head "http://github.com/NeuralEnsemble/pype9", :using => :git

  include Language::Python::Virtualenv

  depends_on :python => :build
  depends_on :python3 => [:optional, :build]

  # Dependencies of various packages
  depends_on "libxml2" => :build
  depends_on "libxslt" => :build
  depends_on "freetype" => :build
  depends_on "pkg-config" => :build
  depends_on :mpi => :recommended
  depends_on "hdf5" => :build

  # Get options to pass to simulator dependencies
  nest_requires = []
  neuron_requires = []

  if build.with? "mpi"
      nest_requires << "with-mpi"
      neuron_requires << "with-mpi"
  end

  if build.with? "python3"
      nest_requires << "with-python3"
      neuron_requires << "with-python3"
  else
      nest_requires << "with-python"
  end

  depends_on "neuron" => neuron_requires
  depends_on "nest" => nest_requires

  # Python dependencies

  resource "Diophantine" do
    url "https://files.pythonhosted.org/packages/e1/78/c95b809d675dc1bda65e547a7a53ba9c8ad6053644b56500fd959ac9d1fc/Diophantine-0.2.0.tar.gz"
    sha256 "c9ad7026ca0d26dffd3e5754bf550020789212b892d80c4a5ce6ae6548ffa196"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "funcsigs" do
    url "https://files.pythonhosted.org/packages/94/4a/db842e7a0545de1cdb0439bb80e6e42dfe82aaeaadd4072f2263a4fbed23/funcsigs-1.0.2.tar.gz"
    sha256 "a7bb0f2cf3a3fd1ab2732cb49eba4252c2af4240442415b4abce3b87022a8f50"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/41/7a/6048de44c62fc5e618178ef9888850c3773a9e4be249e5e673ebce0402ff/h5py-2.7.1.tar.gz"
    sha256 "180a688311e826ff6ae6d3bda9b5c292b90b28787525ddfcb10a29d5ddcae2cc"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
    sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
  end

  resource "lazyarray" do
    url "https://files.pythonhosted.org/packages/a0/c5/4cac8d8749bea1e675aa97232e7eaa1e340b5bd56a041268eb48c8dc523c/lazyarray-0.3.2.tar.gz"
    sha256 "be980534c5950a976709085570f69be9534bdf0f3e5c21a9113de3ee2052683e"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/e1/4c/d83979fbc66a2154850f472e69405572d89d2e6a6daee30d18e83e39ef3a/lxml-4.1.1.tar.gz"
    sha256 "940caef1ec7c78e0c34b0f6b94fe42d0f2022915ffc78643d28538a5cfd0f40e"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "mock" do
    url "https://files.pythonhosted.org/packages/0c/53/014354fc93c591ccc4abff12c473ad565a2eb24dcd82490fae33dbf2539f/mock-2.0.0.tar.gz"
    sha256 "b158b6df76edd239b8208d481dc46b6afd45a846b7812ff0ce58971cf5bc8bba"
  end

  resource "mpi4py" do
    url "https://files.pythonhosted.org/packages/31/27/1288918ac230cc9abc0da17d84d66f3db477757d90b3d6b070d709391a15/mpi4py-3.0.0.tar.gz"
    sha256 "b457b02d85bdd9a4775a097fac5234a20397b43e073f14d9e29b6cd78c68efd7"
  end if build.with? "mpi"

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/7a/05/b3d1472885d8dc0606936ea5da0ccb1b4785682e78ab15e34ada24aea8d5/mpmath-1.0.0.tar.gz"
    sha256 "04d14803b6875fe6d69e6dccea87d5ae5599802e4b1df7997bddd2024001050c"
  end

  resource "neo" do
    url "https://files.pythonhosted.org/packages/1f/f6/972b2846c3e540a562ffaa433e8c10b5f35ff5835cb5830abd2d33dcefb6/neo-0.5.2.tar.gz"
    sha256 "1de436b7d5e72a5b4f1baa68bae5b790624a9ac44b2673811cb0b6ef554d3f8b"
  end

  resource "nineml" do
    url "https://files.pythonhosted.org/packages/b5/fb/cacd04411a46bd101fd2db91d8ec96e1966fe46adad43e27d574b8daf919/nineml-1.0.tar.gz"
    sha256 "7d3f42013a4bf3a0c748b629774c696969790b1bd70a6a616453fe9878f125b2"
  end

  resource "ninemlcatalog" do
    url "https://files.pythonhosted.org/packages/3b/b1/f0cd194cbbf78394eb9ca2980da22f2a9af1418ea1d8c3e5be4b22bdebd9/ninemlcatalog-0.1.2.tar.gz"
    sha256 "856943c1f547cc50d674694ba5b166d6ea744400b72db53e9a461f19758741e8"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/bf/2d/005e45738ab07a26e621c9c12dc97381f372e06678adf7dc3356a69b5960/numpy-1.13.3.zip"
    sha256 "36ee86d5adbabc4fa2643a073f93d5504bdfed37a149a3a49f4dde259f35a750"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/d5/d6/f2bf137d71e4f213b575faa9eb426a8775732432edb67588a8ee836ecb80/pbr-3.1.1.tar.gz"
    sha256 "05f61c71aaefc02d8e37c0a3eeb9815ff526ea28b3b76324769e6158d7f95be1"
  end

  resource "PyNN" do
    url "https://files.pythonhosted.org/packages/ea/c9/ae4a6ac5a6007b85a0e35cce9bd34283eb577606e1f0c15443f575fba630/PyNN-0.9.1.tar.gz"
    sha256 "bbc60fea3235427191feb2daa0e2fa07eb1c3946104c068ac8a2a0501263b0b1"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/4a/85/db5a2df477072b2902b0eb892feb37d88ac635d36245a72a6a69b23b383a/PyYAML-3.12.tar.gz"
    sha256 "592766c6303207a20efc445587778322d7f73b161bd994f227adaa341ba212ab"
  end

  resource "quantities" do
    url "https://files.pythonhosted.org/packages/8a/cb/414802e1ae91aadb0b49474131051f7d61ee3d0b34ed9535fc35cd097634/quantities-0.12.1.tar.gz"
    sha256 "0a03e8511db603c57ca80dee851c43f08d0457f4d592bcac2e154570756cb934"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/91/26/4e477dbd1f9260eb743d9f221af3044648a8fb2fcf3f2f23daee4dc831a4/sympy-1.1.1.tar.gz"
    sha256 "ac5b57691bc43919dcc21167660a57cc51797c28a4301a6144eff07b751216a4"
  end

  # For matplotlib

  resource "backports.functools_lru_cache" do
    url "https://files.pythonhosted.org/packages/4e/91/0e93d9455254b7b630fb3ebe30cc57cab518660c5fad6a08aac7908a4431/backports.functools_lru_cache-1.4.tar.gz"
    sha256 "31f235852f88edc1558d428d890663c49eb4514ffec9f3650e7f3c9e4a12e36f"
  end

  resource "Cycler" do
    url "https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"
    sha256 "cd7b2d1018258d7247a71425e9f26463dfb444d411c39569972f4ce586b0c9d8"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/6c/90/cf10bb2020d2811da811a49601f6eafcda022c6ccd296fd05aba093dee96/matplotlib-2.1.0.tar.gz"
    sha256 "4b5f16c9cefde553ea79975305dcaa67c8e13d927b6e55aa14b4a8d867e25387"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/bf/2d/005e45738ab07a26e621c9c12dc97381f372e06678adf7dc3356a69b5960/numpy-1.13.3.zip"
    sha256 "36ee86d5adbabc4fa2643a073f93d5504bdfed37a149a3a49f4dde259f35a750"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/3c/ec/a94f8cf7274ea60b5413df054f82a8980523efd712ec55a59e7c3357cf7c/pyparsing-2.2.0.tar.gz"
    sha256 "0832bcf47acd283788593e7a0f542407bd9550a55a8a8435214a1960e04bcb04"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/54/bb/f1db86504f7a49e1d9b9301531181b00a1c7325dc85a29160ee3eaa73a54/python-dateutil-2.6.1.tar.gz"
    sha256 "891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/60/88/d3152c234da4b2a1f7a989f89609ea488225eaea015bc16fbde2b3fdfefa/pytz-2017.3.zip"
    sha256 "fae4cffc040921b8a2d60c6cf0b5d662c1190fe54d718271db4eb17d44a185b7"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "subprocess32" do
    url "https://files.pythonhosted.org/packages/b8/2f/49e53b0d0e94611a2dc624a1ad24d41b6d94d0f1b0a078443407ea2214c2/subprocess32-3.2.7.tar.gz"
    sha256 "1e450a4a4c53bf197ad6402c564b9f7a53539385918ef8f12bdf430a61036590"
  end

  def install
    if build.with? "python3"
      python_exec = "python3"
    else
      python_exec = "python"
    end
    venv = virtualenv_create(libexec, python=python_exec)
    venv.pip_install resources
    venv.pip_install_and_link "#{buildpath}[plot]"
  end

  test do
    system "pype9", "convert", "catalog://neuron/Izhikevich", "./izhi.yml"
    system "pype9", "simulate", "./izhi.yml#SampleIzhikevichFastSpiking", "nest", "10.0", "0.1", "--record", "V", "v-nest.neo.pkl", "--init_regime", "subthreshold"
    system "pype9", "simulate", "./izhi.yml#SampleIzhikevichFastSpiking", "neuron", "10.0", "0.1", "--record", "U", "u-neuron.neo.pkl", "--init_regime", "subthreshold"
    system "pype9", "plot", "v-nest.neo.pkl", "--hide", "--save", "v-nest.png"
    system "pype9", "plot", "u-neuron.neo.pkl", "--hide", "--save", "u-neuron.png"
  end

end
