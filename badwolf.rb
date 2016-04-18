class Badwolf < Formula
  desc ""
  homepage ""
  url "https://github.com/google/badwolf/archive/v0.4.0.tar.gz"
  version "1.0.0"
  sha256 "badaf04458845f647c8a0ebed2dab83b6eeff874e6deffcd5f122c4ef89377b7"
  
  depends_on "golang" => :build


  def install
    system "GOPATH=/Users/sushantsrivastava/go_projects go get golang.org/x/net/context"
    system "GOPATH=/Users/sushantsrivastava/go_projects go test && go build ./tools/vcli/bw/..."
    bin.install "bw"
  end

  test do
    system "false"
  end
end
