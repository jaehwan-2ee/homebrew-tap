cask "pitex" do
  version "1.0.6"
  sha256 "6cd8e47a57b341b62982f4f658b09e57a9d38173b9b0a45c739b5cfb1c4bc74a"

  url "https://github.com/jaehwan-2ee/pitex/releases/download/v#{version}/Pitex-v#{version}-macos-arm64.dmg"
  name "Pitex"
  desc "Native LaTeX environment with a Pi-based AI assistant"
  homepage "https://github.com/jaehwan-2ee/pitex"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Pitex.app"

  zap trash: [
    "~/Library/Application Support/app.pitex.desktop",
    "~/Library/Caches/app.pitex.desktop",
    "~/Library/Preferences/app.pitex.desktop.plist",
  ]
end
