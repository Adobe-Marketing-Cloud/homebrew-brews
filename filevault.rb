require 'formula'

class Filevault < Formula
  homepage 'http://dev.day.com/docs/en/crx/current/how_to/how_to_use_the_vlttool.html'
  url 'http://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.8/vault-cli-3.1.8-bin.tar.gz'
  sha1 '7d25e5016963ec109be7234e28ee2815608b1da1'
  version '3.1.8'

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