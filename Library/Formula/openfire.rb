require 'formula'

# Formula to install the generic tar.gz distribution of Openfire - a Java-based XMPP server

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
