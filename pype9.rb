class Pype9 < Formula
  desc "Python pipelines for simulating neural models described in 9ML with Neuron and NEST simulators"
  homepage "pype9.readthedocs.io"
  url "https://github.com/NeuralEnsemble/pype9/archive/0.2.tar.gz"
  sha256 "21a873f3328b5b1e0c8523696147006c372c030a475c30423cf2dcbf36aa6d93"
  head "http://github.com/NeuralEnsemble/pype9", :using => :git

  include Language::Python::Virtualenv

  option "no-venv", "Installs the Pype9 Python package and its dependencies into the Python path. NB: Pip must be installed for the Python to be used"

  depends_on :python3 => :optional
  depends_on :mpi => :optional
  depends_on "hdf5"

  sim_requires = []
  sim_requires << "with-python3" if build.with? "python3"
  sim_requires << "with-mpi" if build.with? "mpi"

  depends_on "neuron" => sim_requires
  depends_on "nest" => sim_requires

  resource "sympy" do
    url "https://pypi.python.org/packages/91/26/4e477dbd1f9260eb743d9f221af3044648a8fb2fcf3f2f23daee4dc831a4/sympy-1.1.1.tar.gz"
    sha256 "ac5b57691bc43919dcc21167660a57cc51797c28a4301a6144eff07b751216a4"
  end

  resource "six" do
    url "https://pypi.python.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "quantities" do
    url "https://pypi.python.org/packages/8a/cb/414802e1ae91aadb0b49474131051f7d61ee3d0b34ed9535fc35cd097634/quantities-0.12.1.tar.gz"
    sha256 "0a03e8511db603c57ca80dee851c43f08d0457f4d592bcac2e154570756cb934"
  end

  resource "PyNN" do
    url "https://pypi.python.org/packages/ea/c9/ae4a6ac5a6007b85a0e35cce9bd34283eb577606e1f0c15443f575fba630/PyNN-0.9.1.tar.gz"
    sha256 "bbc60fea3235427191feb2daa0e2fa07eb1c3946104c068ac8a2a0501263b0b1"
  end

  resource "pbr" do
    url "https://pypi.python.org/packages/d5/d6/f2bf137d71e4f213b575faa9eb426a8775732432edb67588a8ee836ecb80/pbr-3.1.1.tar.gz"
    sha256 "05f61c71aaefc02d8e37c0a3eeb9815ff526ea28b3b76324769e6158d7f95be1"
  end

  resource "numpy" do
    url "https://pypi.python.org/packages/bf/2d/005e45738ab07a26e621c9c12dc97381f372e06678adf7dc3356a69b5960/numpy-1.13.3.zip"
    sha256 "36ee86d5adbabc4fa2643a073f93d5504bdfed37a149a3a49f4dde259f35a750"
  end

  resource "ninemlcatalog" do
    url "https://pypi.python.org/packages/f4/1d/90ff1ccac61e32748f46539bb7d7233dd66dbb1a8f561faa445d5b212c35/ninemlcatalog-0.1.tar.gz"
    sha256 "1d6613f5032781a289dfa9f7e9d74337724dca919841ee7ba84baa8c8e498500"
  end

  resource "nineml" do
    url "https://pypi.python.org/packages/b5/fb/cacd04411a46bd101fd2db91d8ec96e1966fe46adad43e27d574b8daf919/nineml-1.0.tar.gz"
    sha256 "7d3f42013a4bf3a0c748b629774c696969790b1bd70a6a616453fe9878f125b2"
  end

  resource "neo" do
    url "https://pypi.python.org/packages/1f/f6/972b2846c3e540a562ffaa433e8c10b5f35ff5835cb5830abd2d33dcefb6/neo-0.5.2.tar.gz"
    sha256 "1de436b7d5e72a5b4f1baa68bae5b790624a9ac44b2673811cb0b6ef554d3f8b"
  end

  resource "mpmath" do
    url "https://pypi.python.org/packages/7a/05/b3d1472885d8dc0606936ea5da0ccb1b4785682e78ab15e34ada24aea8d5/mpmath-1.0.0.tar.gz"
    sha256 "04d14803b6875fe6d69e6dccea87d5ae5599802e4b1df7997bddd2024001050c"
  end

  resource "mpi4py" do
    url "https://pypi.python.org/packages/31/27/1288918ac230cc9abc0da17d84d66f3db477757d90b3d6b070d709391a15/mpi4py-3.0.0.tar.gz"
    sha256 "b457b02d85bdd9a4775a097fac5234a20397b43e073f14d9e29b6cd78c68efd7"
  end

  resource "mock" do
    url "https://pypi.python.org/packages/0c/53/014354fc93c591ccc4abff12c473ad565a2eb24dcd82490fae33dbf2539f/mock-2.0.0.tar.gz"
    sha256 "b158b6df76edd239b8208d481dc46b6afd45a846b7812ff0ce58971cf5bc8bba"
  end

  resource "lxml" do
    url "https://pypi.python.org/packages/e1/4c/d83979fbc66a2154850f472e69405572d89d2e6a6daee30d18e83e39ef3a/lxml-4.1.1.tar.gz"
    sha256 "940caef1ec7c78e0c34b0f6b94fe42d0f2022915ffc78643d28538a5cfd0f40e"
  end

  resource "lazyarray" do
    url "https://pypi.python.org/packages/a0/c5/4cac8d8749bea1e675aa97232e7eaa1e340b5bd56a041268eb48c8dc523c/lazyarray-0.3.2.tar.gz"
    sha256 "be980534c5950a976709085570f69be9534bdf0f3e5c21a9113de3ee2052683e"
  end

  resource "h5py" do
    url "https://pypi.python.org/packages/41/7a/6048de44c62fc5e618178ef9888850c3773a9e4be249e5e673ebce0402ff/h5py-2.7.1.tar.gz"
    sha256 "180a688311e826ff6ae6d3bda9b5c292b90b28787525ddfcb10a29d5ddcae2cc"
  end

  resource "future" do
    url "https://pypi.python.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  resource "funcsigs" do
    url "https://pypi.python.org/packages/94/4a/db842e7a0545de1cdb0439bb80e6e42dfe82aaeaadd4072f2263a4fbed23/funcsigs-1.0.2.tar.gz"
    sha256 "a7bb0f2cf3a3fd1ab2732cb49eba4252c2af4240442415b4abce3b87022a8f50"
  end

  resource "docutils" do
    url "https://pypi.python.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "Diophantine" do
    url "https://pypi.python.org/packages/e1/78/c95b809d675dc1bda65e547a7a53ba9c8ad6053644b56500fd959ac9d1fc/Diophantine-0.2.0.tar.gz"
    sha256 "c9ad7026ca0d26dffd3e5754bf550020789212b892d80c4a5ce6ae6548ffa196"
  end

  resource "PyYAML" do
    url "https://pypi.python.org/packages/6b/f0/a0250248ea260d55748fff586d89a32afbb22656f4498b08d2636a48d4ec/PyYAML-3.12.zip"
    sha256 "5ac82e411044fb129bae5cfbeb3ba626acb2af31a8d17d175004b70862a741a7"
  end

  resource "MarkupSafe" do
    url "https://pypi.python.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "Jinja2" do
    url "https://pypi.python.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
    sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
  end
  

  def install
    virtualenv_install_with_resources
  end

  test do

  end
end
