# The release workflow of cgaube/local-env updates the version, the release
# tag in the URLs and the two checksums: don't change those by hand.
class LocalEnv < Formula
  desc "HTTPS *.dev.test for your containers, plus templates from your git repos"
  homepage "https://github.com/cgaube/local-env"
  if Hardware::CPU.arm?
    url "https://github.com/cgaube/local-env/releases/download/v0.1.0/local-env-darwin-arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  else
    url "https://github.com/cgaube/local-env/releases/download/v0.1.0/local-env-darwin-x64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end
  version "0.1.0"
  license "MIT"

  # local-env setup configures them: wildcard DNS and the local certificates
  depends_on "dnsmasq"
  depends_on :macos
  depends_on "mkcert"

  def install
    bin.install Dir["local-env-darwin-*"].first => "local-env"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-env --version")
  end
end
