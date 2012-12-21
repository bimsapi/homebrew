require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Openfire < Formula
  homepage 'http://www.igniterealtime.org/projects/openfire/index.jsp'
  url 'http://download.igniterealtime.org/openfire/openfire_3_7_1.tar.gz'
  sha1 '750b2cfde9aaf27862eb2f8398e29d2af2c9eb15'

  def install
    prefix.install %w{LICENSE.html README.html changelog.html}
    libexec.install '.install4j'
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/openfire"
    bin.install_symlink "#{libexec}/bin/openfirectl"
  end
end
