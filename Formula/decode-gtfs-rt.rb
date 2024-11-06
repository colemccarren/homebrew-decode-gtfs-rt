class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT feeds and save as human-readable JSON"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/releases/download/0.3/decode-gtfs-rt-1.0.tar.gz"
  sha256 "86e85949d03a30d909db51d5f2c1d9432c9c81321c6cde1447d15df1fb9652a8"

  def install
    # Ensure the shell script is installed correctly
    bin.install "decode_gtfs_rt.sh" => "decode"
  end

  test do
    system "#{bin}/decode", "--help"
  end
end

