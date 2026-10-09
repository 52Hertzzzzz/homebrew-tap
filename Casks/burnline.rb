cask "burnline" do
  version "1.1.0"
  sha256 "46d5e6323df9726754398ec16dd144ff2fbadb53abc8ecfa9b08772cc2f0896b"

  url "https://github.com/52Hertzzzzz/homebrew-tap/releases/download/v#{version}/Burnline-#{version}-arm64.dmg"
  name "Burnline"
  desc "AI quota and runway monitor for the menu bar"
  homepage "https://github.com/52Hertzzzzz/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Burnline.app"

  caveats <<~EOS
    This is a team preview without Apple Developer ID signing or notarization.
    Homebrew installation does not bypass macOS Gatekeeper checks.
    Review the README for first-launch requirements and account setup.
  EOS
end
