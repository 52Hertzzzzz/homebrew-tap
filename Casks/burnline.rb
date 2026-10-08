cask "burnline" do
  version "1.0.0"
  sha256 "618f3f4c263a73cb34ddeaec4e0c68e5d19cd9ac7c02b3b5409980c091a2ad2c"

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
