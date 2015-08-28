require 'formula'

class Filevault < Formula
  homepage 'http://dev.day.com/docs/en/crx/current/how_to/how_to_use_the_vlttool.html'
  url 'http://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.18/vault-cli-3.1.18-bin.tar.gz'
  sha1 'b165b53072559dac79de58464c64710286fa1e09'
  version '3.1.18'

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
