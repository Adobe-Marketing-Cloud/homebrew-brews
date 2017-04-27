require 'formula'

class Filevault < Formula
  homepage 'http://dev.day.com/docs/en/crx/current/how_to/how_to_use_the_vlttool.html'
  url 'http://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.38/vault-cli-3.1.38-bin.tar.gz'
  sha256 '737191bb16ae94c048173fb11a6aa4dd68b275231bc528d4d060d2b2f6b3c948'
  version '3.1.38'

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
