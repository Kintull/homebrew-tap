class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.8/github-tracker-macos-arm64.tar.gz"
  sha256 "691cb73bfe80c14a1b7fba294c6cd4423de7933d75cb09d1833abd3a293dc719"
  version "1.0.8"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
