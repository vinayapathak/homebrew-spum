class Spum < Formula
  desc "Local language, image and speech inference for biomedical instruments"
  homepage "https://spum.si/"
  url "https://nsimaging.ai/spum/releases/spum-0.2.4-macos-arm64.tar.gz"
  version "0.2.4"
  revision 1
  sha256 "3778cb3ace8070f997b83c63ebfdc71e874c24fe747fbb24085150f3bd972911"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :sonoma
  end

  def install
    bin.install "spum"
    # Keep Developer ID signatures intact through Homebrew's Mach-O relocation.
    system "/usr/bin/tar", "-czf", "spum-runtime-presigned.tar.gz", "spum-runtime"
    libexec.install "spum-runtime-presigned.tar.gz"
    pkgshare.install "licenses", "THIRD_PARTY_NOTICES.md", "speech-runtime-third-party-sources.tar.gz"
    prefix.install "LICENSE"
  end

  def post_install
    system "/usr/bin/tar", "-xzf", libexec/"spum-runtime-presigned.tar.gz", "-C", libexec
  end

  test do
    assert_match "spum #{version}", shell_output("#{bin}/spum --version")
    assert_match "whisper-base-en", shell_output("#{bin}/spum models catalog --json")
  end
end
