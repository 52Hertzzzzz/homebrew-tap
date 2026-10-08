require "cask/cask_loader"
require "digest"

cask_path = Pathname.new(__dir__).parent/"Casks/burnline.rb"
cask = Cask::CaskLoader.load(cask_path)
checks = {
  "version is pinned" => cask.version.to_s == "1.0.0",
  "download belongs to this repository and version" =>
    cask.url.to_s == "https://github.com/52Hertzzzzz/homebrew-tap/releases/download/v#{cask.version}/Burnline-#{cask.version}-arm64.dmg",
  "download has a real SHA-256" => cask.sha256.to_s.match?(/\A[0-9a-f]{64}\z/),
  "Intel machines cannot install the ARM package" => cask.depends_on.to_h[:arch] == [{ type: :arm, bits: 64 }],
  "application artifact is declared" => cask.artifacts.any? { |artifact|
    artifact.is_a?(Cask::Artifact::App) && artifact.source.basename.to_s == "Burnline.app"
  },
  "unsigned preview is explained" => cask.caveats.to_s.include?("without Apple Developer ID"),
  "no install or uninstall scripts modify security or user data" =>
    cask.artifacts.all? { |artifact| artifact.is_a?(Cask::Artifact::App) },
}

if ARGV.first
  checks["release bytes match the cask checksum"] = Digest::SHA256.file(ARGV.first).hexdigest == cask.sha256.to_s
end

checks.each do |name, passed|
  raise "FAIL: #{name}" unless passed

  puts "PASS: #{name}"
end
puts "#{checks.length} checks passed"
