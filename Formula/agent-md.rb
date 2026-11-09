class AgentMd < Formula
  desc "Fast Markdown editor, linter, and formatter designed for AI agents"
  homepage "https://github.com/loclv/agent-md"
  url "https://github.com/loclv/agent-md/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "d50de1d3b587419ab5235421722bf93986b038e4351ab58a74eac9e46e269e33"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-md -v")
  end
end
