class Repo < Formula
  desc "FTP-like tool for JCR content"
  homepage "https://github.com/Adobe-Marketing-Cloud/tools/tree/master/repo"
  url "https://github.com/Adobe-Marketing-Cloud/tools/releases/download/repo-v1.3/repo"
  version "1.3"
  sha256 "9f8dc24a7bccaf72bad409b66b165b0eaf9d02feb24bd1f7a1f9df493c0f9fcc"

  conflicts_with "repo", :because => "Android's repo also provides a 'repo' binary/script"

  def install
    bin.install "repo"
  end

  test do
    assert_equal "repo version #{version}", `#{bin}/repo --version`.strip
  end
end
