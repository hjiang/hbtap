class Envel < Formula
  desc "CLI tool to save environment variables to an Elisp file"
  homepage "https://github.com/hjiang/envel"
  url "https://github.com/hjiang/envel/archive/refs/tags/v0.1.0.tar.gz"

  depends_on "cmake" => :build

  def install
    system "scripts/configure-release"
    system "scripts/build"
    bin.install "build/src/gen-envel"
  end

  test do
    system "scripts/test"
  end
end
