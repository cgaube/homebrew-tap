# The release workflow of cgaube/local-env updates the version, the release tag
# in the URL and the checksum: don't change those by hand.
class LocalEnv < Formula
  desc "HTTPS *.dev.test for your containers, plus templates from your git repos"
  homepage "https://github.com/cgaube/local-env"
  url "https://github.com/cgaube/local-env/releases/download/v0.10.0/local-env"
  version "0.10.0"
  sha256 "41ecb7662e32971cec519686f1f3dd1f339065cc086ba4d5bc21b6f644ccda0b"
  license "MIT"

  # Apple Silicon Macs only. local-env setup configures dnsmasq (wildcard
  # DNS) and mkcert (local certificates).
  depends_on arch: :arm64
  depends_on "dnsmasq"
  depends_on :macos
  depends_on "mkcert"
  depends_on "ansible"

  def install
    bin.install "local-env"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-env --version")
  end
end
