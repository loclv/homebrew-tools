class AgentMd < Formula
  desc "Fast Markdown editor, linter, and formatter designed for AI agents"
  homepage "https://github.com/loclv/agent-md"
  url "https://github.com/loclv/agent-md/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "5ee5494c91b3e0ce55d7928b220691d7f6204b99fb608dc8f204da4bf176a9b8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/agent-md -v")
  end
end
