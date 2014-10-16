require "formula"

class Repo < Formula
  homepage "https://github.com/Adobe-Marketing-Cloud/tools/tree/master/repo"
  url "https://github.com/Adobe-Marketing-Cloud/tools/releases/download/repo-v1.1/repo"
  sha1 "b8005fcd775bc9a5d5018ca2329d8cd31d941817"
  version "1.1"

  depends_on "curl"
  depends_on "rsync"

  conflicts_with "repo", :because => "Android's repo also provides a 'repo' binary/script"

  def install
    bin.install "repo"
  end

  test do
    assert_equal "repo version #{version}", `#{bin}/repo --version`.strip
  end
end
