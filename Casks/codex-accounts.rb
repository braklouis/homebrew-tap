cask "codex-accounts" do
  version "0.4.0"
  sha256 "a5d99b6c40379267cccf585827bd09fd16042c7bada95fd5d4e72f0eaf4e1406"

  url "https://github.com/braklouis/codex-account-switcher/releases/download/v#{version}/Codex-Accounts-#{version}-arm64.zip"
  name "Codex Accounts"
  desc "Menu bar account switcher and quota monitor for Codex"
  homepage "https://github.com/braklouis/codex-account-switcher"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Codex Accounts.app"

  caveats <<~EOS
    Requires the official Codex desktop app and file-based sign-in.
    This release is ad-hoc signed and not notarized by Apple.
    Gatekeeper may require approval in System Settings > Privacy & Security.
    Disable launch at login in the app before uninstalling.
    Saved Keychain accounts are retained on uninstall.
  EOS
end
