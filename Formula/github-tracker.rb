class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.9/github-tracker-macos-arm64.tar.gz"
  sha256 "323cef4cad615a0f022ad401df5498de8d2363dafdcfbd28f10fcbdcdc0a9fb7"
  version "1.0.9"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
