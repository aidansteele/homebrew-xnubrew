require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Dtrace < Formula
  homepage ""
  url "http://opensource.apple.com/tarballs/dtrace/dtrace-96.tar.gz"
  sha1 "6bc193ee1e31eb495b2dea2725b7319181d1ef79"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    system "xcodebuild install -target ctfconvert -target ctfdump -target ctfmerge DSTROOT=build"
    bin.install Dir['build/usr/local/bin/*']
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test dtrace`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
