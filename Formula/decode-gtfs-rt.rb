class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT feeds and save as human-readable JSON"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/archive/v1.0.tar.gz"
  sha256 "1ea414bdd415f0e42745f907ff617e4a9042f3b6e321315149e4326f57b14821"

  def install
    # Ensure the shell script is installed correctly
    bin.install "decode_gtfs_rt.sh" => "decode"
  end

  test do
    system "#{bin}/decode", "--help"
  end
end

