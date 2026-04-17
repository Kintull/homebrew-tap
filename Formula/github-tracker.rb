class GithubTracker < Formula
  desc "A TUI application for tracking GitHub PRs"
  homepage "https://github.com/Kintull/gihub-pr-poller"
  url "https://github.com/Kintull/gihub-pr-poller/releases/download/v1.0.4/github-tracker-macos-arm64.tar.gz"
  sha256 "b34048efdd04eb7ed87ebe3fab9d6b7028573dd9ee2a770606a00929ff495b05"
  version "1.0.4"
  license "MIT"

  def install
    bin.install "github-tracker"
  end

  test do
    assert_match "github-tracker #{version}", shell_output("#{bin}/github-tracker --version")
  end
end
