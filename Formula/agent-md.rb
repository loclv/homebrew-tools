class AgentMd < Formula
  desc "Fast Markdown editor, linter, and formatter designed for AI agents"
  homepage "https://github.com/loclv/agent-md"
  url "https://github.com/loclv/agent-md/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "e24ebc3874b4458cd86c5acbe1500569595b04bdbe93d2590bd6283779c4e4db"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-md -v")
  end
end
