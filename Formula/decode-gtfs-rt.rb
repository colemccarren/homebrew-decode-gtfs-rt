class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT feed into human-readable JSON format"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/raw/main/decode-gtfs-rt.tar.gz"
  sha256 "a3c344b836d98caa9f43e450788c14233d2092c5ec9d61b84f3e9e5c7c10ebda"

  def install
    bin.install "decode_gtfs_rt.sh" => "decode"
  end
end

