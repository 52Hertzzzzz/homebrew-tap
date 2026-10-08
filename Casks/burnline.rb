cask "burnline" do
  version "1.0.0"
  sha256 "7a338435b5027fb7525d3f18be6765d10d30cec3e58f3eb13f3aac5421b14ca9"

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
