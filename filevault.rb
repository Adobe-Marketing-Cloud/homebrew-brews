require 'formula'

class Filevault < Formula
  homepage 'http://dev.day.com/docs/en/crx/current/how_to/how_to_use_the_vlttool.html'
  url 'http://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.26/vault-cli-3.1.26-bin.tar.gz'
  sha256 '21876ec9c61eec1b3f28a0e467a47856cc45604b203e6f181b15cf3440ff0616'
  version '3.1.26'

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
