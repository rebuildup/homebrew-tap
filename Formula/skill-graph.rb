# typed: false
# frozen_string_literal: true

# TODO(v0.4.0): fill in sha256 values from the published release assets
# (sha256sums.txt on https://github.com/rebuildup/skill-graph/releases/tag/v0.4.0)
# before merging. `brew audit --strict` will fail while placeholders remain.
class SkillGraph < Formula
  desc "Agent Skills discovery and recommendation CLI with runtime hooks"
  homepage "https://github.com/rebuildup/skill-graph"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_skill-graph-x86_64-apple-darwin.tar.gz"
    end
    on_arm do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_skill-graph-aarch64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_SHA256_skill-graph-x86_64-unknown-linux-gnu.tar.gz"
    end
    on_arm do
      url "https://github.com/rebuildup/skill-graph/releases/download/v#{version}/skill-graph-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_SHA256_skill-graph-aarch64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "skill-graph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skill-graph --version")
  end
end
