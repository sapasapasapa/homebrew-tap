class GhaPinner < Formula
    include Language::Python::Virtualenv
  
    desc "📌 Pin third-party Github Actions using the commit SHA"
    homepage "https://github.com/sapasapasapa/gha-pinner"
    url "https://github.com/sapasapasapa/gha-pinner/archive/v0.1.0.tar.gz"
    sha256 "PLACEHOLDER_SHA256"
    license "MIT"
    head "https://github.com/sapasapasapa/gha-pinner.git", branch: "master"
  
    depends_on "python@3.9"
  
    resource "requests" do
      url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
      sha256 "55365417734eb18255590a9f9a0bb3a9e1da89e73c8b3e6e24f8b8f6d1b8c6e2"
    end
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      assert_match "gha-pinner v0.1.0", shell_output("#{bin}/gha-pinner --version")
    end
  end
  