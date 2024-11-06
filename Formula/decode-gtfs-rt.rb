class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT feed into human-readable JSON format"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/releases/download/0.2/decode-gtfs-rt.tar.gz"
  sha256 "67f5828fa544dd463fbb5da2333774a638f3a9eebf582b6e0d7e391a5de7738f"

  def install
    bin.install "decode_gtfs_rt.sh" => "decode"
  end
end

