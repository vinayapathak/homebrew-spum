cask "spum-app" do
  version "0.2.2"
  sha256 "dad3f3fa1a6af4a83db5e3317b934cedcf708f41c0d22a094e15768f94c7ea6f"
  url "https://nsimaging.ai/spum/releases/Spum-#{version}-macOS-arm64.dmg"
  name "Spum"
  desc "Standalone local inference app for biomedical instruments"
  homepage "https://nsimaging.ai/spum/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spum.app"
end
