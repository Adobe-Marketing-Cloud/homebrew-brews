require 'formula'

class Filevault < Formula
  homepage 'http://dev.day.com/docs/en/crx/current/how_to/how_to_use_the_vlttool.html'
  url 'http://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.28/vault-cli-3.1.28-bin.tar.gz'
  sha256 '3687b27e729e9ed4ba3533d0c563f80b84d8ecb5cdf9ed2f1ceb559478d053ca'
  version '3.1.28'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]
    
    libexec.install %w[bin lib]

    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def test
    system "vlt"
  end
end
