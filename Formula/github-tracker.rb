class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.6/github-tracker-macos-arm64.tar.gz"
  sha256 "23999c19e668cdb1cc48223c48959e0d57b87413f02559e0b733f918fd40e5b7"
  version "1.0.6"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
