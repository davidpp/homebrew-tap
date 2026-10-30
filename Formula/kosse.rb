# Generated from packaging/homebrew/kosse.rb.tmpl in https://github.com/davidpp/kosse for exactly
# one release archive; that repository's release workflow commits it here. Edit the template there.
class Kosse < Formula
  desc "Menu-bar app and local dashboard for the development services you already run"
  homepage "https://github.com/davidpp/kosse"
  url "https://github.com/davidpp/kosse/releases/download/v0.3.0/kosse-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "e20dd3a2de97a4c68058794152a72d75604f8c4db499b632df9eddccff3d34a6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "kosse"
    doc.install "INSTALL.md", "MANIFEST.json", "SKILL.md", "THIRD_PARTY_NOTICES.md"
  end

  def caveats
    <<~EOS
      To start the menu-bar app at each login (optional), enable it from the linked path, not
      the versioned Cellar path, so upgrades keep working:
        #{HOMEBREW_PREFIX}/bin/kosse startup enable
      Before `brew uninstall kosse`, run `kosse startup disable` if you enabled it.
    EOS
  end

  test do
    assert_equal "kosse #{version}", shell_output("#{bin}/kosse --version").strip
    system bin/"kosse", "config", "schema"
  end
end
