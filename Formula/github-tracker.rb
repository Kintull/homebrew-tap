class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.5/github-tracker-macos-arm64.tar.gz"
  sha256 "7be468d9ff6619788f799db83c1dccdd03f1eddfc1c120b943709ccad22245ee"
  version "1.0.5"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
