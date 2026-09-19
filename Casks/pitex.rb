cask "pitex" do
  version "1.0.7"
  sha256 "0df80169bbd8863e9e67603a957c1ca3da243f51826a3e01312a19db182ab7b5"

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
