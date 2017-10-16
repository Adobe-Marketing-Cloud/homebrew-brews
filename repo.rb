class Repo < Formula
  desc "FTP-like tool for JCR content"
  homepage "https://github.com/Adobe-Marketing-Cloud/tools/tree/master/repo"
  url "https://github.com/Adobe-Marketing-Cloud/tools/releases/download/repo-1.4/repo"
  sha256 "4c627df9ee17f62838161e0525bb42349c01787b90f4365d836641c9a3ea16ce"

  conflicts_with "repo", :because => "Android's repo also provides a 'repo' binary/script"

  def install
    bin.install "repo"
  end

  test do
    assert_equal "repo version #{version}", `#{bin}/repo --version`.strip
  end
end
