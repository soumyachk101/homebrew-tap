cask "ensembyte" do
  version "1.1.9"
  sha256 "c6af22b0be5d6e34904fc8dc2fe8479c2cb6442867703f1600057aac59d269da"

  url "https://github.com/soumyachk101/Ensembyte/releases/download/v#{version}/Ensembyte-#{version}.dmg"
  name "Ensembyte"
  desc "Local-first multi-agent coding harness"
  homepage "https://ensembyte.vercel.app"

  auto_updates true
  depends_on macos: :sonoma

  app "Ensembyte.app"

  zap trash: [
    "~/Library/Application Support/Ensembyte",
    "~/Library/Caches/org.ensembyte.desktop",
    "~/Library/Preferences/org.ensembyte.desktop.plist",
    "~/Library/Saved Application State/org.ensembyte.desktop.savedState",
  ]
end
