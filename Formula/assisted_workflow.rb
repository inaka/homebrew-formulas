require "formula"

class AssistedWorkflow < Formula
  homepage "https://github.com/inaka/assisted_workflow"
  url "https://github.com/inaka/assisted_workflow/releases/download/"\
      "v0.4.0/aw-0.4.0-osx.tar.gz"
  version "0.4.0"
  sha256 "e5f1cb33abb8ba6095a1fd17f4098f8fd401e7fa4886c181a6d27755d7910ed7"

  def install
    prefix.install "lib" => "lib"

    bin.install "bin/aw"
  end

  test do
    system "#{bin}/aw", "version"
  end
end
