cask "pitex@nightly" do
  version "1.0.7-nightly.202610242028"
  sha256 "75a63caa61919760379bb265ebbd3bee6f0947e46595045da2f6d38339d57ab0"
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
