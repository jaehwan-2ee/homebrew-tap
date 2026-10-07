cask "pitex@nightly" do
  version "1.0.3-nightly.202610072254"
  sha256 "95add64c6645cca39f4e58c31a5c3da25342997a441dffe794ce94bf437ecb9f"
  url "https://github.com/jaehwan-2ee/pitex/releases/download/nightly/Pitex-Nightly-#{version}-macos-arm64.dmg"
  name "Pitex Nightly"
  desc "Native LaTeX environment"
  homepage "https://github.com/jaehwan-2ee/pitex"
  depends_on arch: :arm64
  depends_on macos: :sequoia
  app "Pitex Nightly.app"
  zap trash: [
    "~/Library/Application Support/Pitex Nightly",
    "~/Library/Caches/Pitex Nightly",
    "~/Library/Caches/app.pitex.desktop.nightly",
    "~/Library/Preferences/app.pitex.desktop.nightly.plist",
  ]
end
