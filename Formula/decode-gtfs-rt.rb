class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT feeds and save as human-readable JSON"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/archive/refs/tags/v0.6.tar.gz"
  sha256 "7104337ad996e7e0c40e258bb74e96228d91dbee19facd043b7442c510e7bf55"

  def install
    # Ensure the shell script is installed correctly
    bin.install "decode_gtfs_rt.sh" => "decode"
  end

  test do
    system "#{bin}/decode", "--help"
  end
end

