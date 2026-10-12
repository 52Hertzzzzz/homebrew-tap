cask "burnline" do
  version "1.1.3"
  sha256 "c2edf0f9cb35b69ad8f08b2314a3aafe51aa2731d02d90f11a08dc07e798ac6f"

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
