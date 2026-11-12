cask "pitex@nightly" do
  version "1.0.8-nightly.202611120017"
  sha256 "934ecdbbe55754258ffbbd74c30535d165219f1a7ed46d2f206830fd45a6f8c4"
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
