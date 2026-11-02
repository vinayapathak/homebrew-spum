class Spum < Formula
  desc "Local language, image and speech inference for biomedical instruments"
  homepage "https://spum.si/"
  url "https://nsimaging.ai/spum/releases/spum-0.2.3-macos-arm64.tar.gz"
  version "0.2.3"
  sha256 "ebf325321e5e2813307cd75781fad3b6f52f79a96fd5d6aace7a30734c132682"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :sonoma
  end

  def install
    bin.install "spum"
    libexec.install "spum-runtime"
    pkgshare.install "licenses", "THIRD_PARTY_NOTICES.md", "speech-runtime-third-party-sources.tar.gz"
    prefix.install "LICENSE"
  end

  test do
    assert_match "spum #{version}", shell_output("#{bin}/spum --version")
    assert_match "whisper-base-en", shell_output("#{bin}/spum models catalog --json")
  end
end
