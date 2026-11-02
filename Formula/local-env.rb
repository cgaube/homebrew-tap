# The release workflow of cgaube/local-env updates the version, the release tag
# in the URL and the checksum: don't change those by hand.
class LocalEnv < Formula
  desc "HTTPS *.dev.test for your containers, plus templates from your git repos"
  homepage "https://github.com/cgaube/local-env"
  url "https://github.com/cgaube/local-env/releases/download/v0.3.0/local-env"
  version "0.3.0"
  sha256 "8a87b403d371b2f5e785f40b84d6032c075eee12df88c0b97ecaf672e4c7fc2b"
  license "MIT"

  # Apple Silicon Macs only. local-env setup configures dnsmasq (wildcard
  # DNS) and mkcert (local certificates).
  depends_on arch: :arm64
  depends_on "dnsmasq"
  depends_on :macos
  depends_on "mkcert"

  def install
    bin.install "local-env"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-env --version")
  end
end
