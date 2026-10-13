cask "pitex@nightly" do
  version "1.0.5-nightly.202610130022"
  sha256 "6a0eca25f8de6a397f78932e525dd77ef7f11fe796050681ec76710a4bae70d5"
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
