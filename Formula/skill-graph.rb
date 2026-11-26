# typed: false
# frozen_string_literal: true

class SkillGraph < Formula
  desc "Agent Skills discovery and recommendation CLI with runtime hooks"
  homepage "https://github.com/rebuildup/skill-graph"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-x86_64-apple-darwin.tar.gz"
      sha256 "68ae00a2bd99272c55605d7d99c86f6959d8321c7e155aa37c60811e8d5874b4"
    end
    on_arm do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-aarch64-apple-darwin.tar.gz"
      sha256 "c991caef770cc1741d577b0db705e6409166da97e5ad11f29bad86d4a67c92b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a4b7fe51f37fa31ed02d6c3202d6864d8af1120ef51f53c19acf66dcc40da56"
    end
    on_arm do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13e662829e2263cb1cec045a2ed3cf92a04eb24b97b017cb0a6b6a1381fe86c7"
    end
  end

  def install
    bin.install "skill-graph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skill-graph --version")
  end
end
