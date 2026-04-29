class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.7/github-tracker-macos-arm64.tar.gz"
  sha256 "71dc6a60129e2541299fedf36d9cac84cda7ca1b098caacf563b1fbc68250dfc"
  version "1.0.7"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
