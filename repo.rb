require "formula"

class Repo < Formula
  homepage "https://github.com/Adobe-Marketing-Cloud/tools/tree/master/repo"
  url "https://github.com/Adobe-Marketing-Cloud/tools/releases/download/repo-v1.2/repo"
  sha1 "ea4f3e5404d81d9fb2c4d7e1804b128426fcd2a1"
  version "1.2"

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
