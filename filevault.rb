require 'formula'

class Filevault < Formula
  homepage 'http://jackrabbit.apache.org/filevault/overview.html'
  url 'https://repo.maven.apache.org/maven2/org/apache/jackrabbit/vault/vault-cli/3.1.44/vault-cli-3.1.44-bin.tar.gz'
  sha256 'd3878a59b7c25f89e4f3701abf2892702ea435b4f07633065faa7a6fbf9fb36e'
  version '3.1.44'

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
