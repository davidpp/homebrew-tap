# Generated from packaging/homebrew/kabane.rb.tmpl in https://github.com/davidpp/kabane for exactly
# one release; that repository's release workflow commits it here. Edit the template there.
class Kabane < Formula
  desc "Local-first issue tracker and kanban for humans and AI agent runtimes"
  homepage "https://github.com/davidpp/kabane"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.0/kabane-darwin-arm64.tar.gz"
      sha256 "4cd7a0ab41da7e67b744a6de91c24eeebb7021ce0e069bbc13c9c0c1c67217e4"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.0/kabane-darwin-x64.tar.gz"
      sha256 "dddaa4664bd7034565072dd80fdea149bc1060adb0756998f9b2b97baa931702"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.0/kabane-linux-arm64.tar.gz"
      sha256 "1d8135e9c10ce35194b013f5c040bd21b381a4bc5f0ddc07737e8ee8b8ae2c54"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.0/kabane-linux-x64.tar.gz"
      sha256 "148384b6df7ac518d14d9d59038d1dac4486c01693dd3f810cef9301b76bd2e6"
    end
  end

  def install
    # The archive's kabane/ directory stays whole: the executable with templates/ beside it.
    libexec.install Dir["*"]
    bin.install_symlink libexec/"kabane"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kabane --version").strip
  end
end
