class Mission < Formula
  desc "Global launcher for mission orchestration systems"
  homepage "https://github.com/Brandon-Gottshall/mission"
  url "https://github.com/Brandon-Gottshall/mission.git",
      tag:      "v0.1.1",
      revision: "484cf1004a38b296be599c51f6c1bcbbdb41286d"
  version "0.1.1"
  license "MIT"
  head "https://github.com/Brandon-Gottshall/mission.git", branch: "main"

  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "mission"
  end

  test do
    assert_match "global mission launcher", shell_output("#{bin}/mission help")
  end
end
