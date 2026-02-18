class Mission < Formula
  desc "Global launcher for mission orchestration systems"
  homepage "https://github.com/Brandon-Gottshall/mission"
  url "https://github.com/Brandon-Gottshall/mission/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "0.1.0"
  license "MIT"

  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "mission"
  end

  test do
    assert_match "global mission launcher", shell_output("#{bin}/mission help")
  end
end
