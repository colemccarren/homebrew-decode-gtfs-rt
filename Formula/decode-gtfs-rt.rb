class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT protobuf files to JSON"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/archive/v1.0.tar.gz"
  sha256 "YOUR_TARBALL_SHA256_HASH"

  depends_on "protobuf"  # Ensure Protobuf is installed

  def install
    # Install the main script to the bin directory
    bin.install "decode_gtfs_rt"
    
    # Download the live gtfs-realtime.proto file
    system "curl", "-o", "gtfs-realtime.proto", "https://developers.google.com/transit/gtfs-realtime/gtfs-realtime.proto"
    
    # Move the downloaded .proto file to the shared directory
    (share/"gtfs").install "gtfs-realtime.proto"
  end

  def caveats
    <<~EOS
      The 'decode' command is now available to decode GTFS-RT files.
      Usage: decode path/to/gtfs-rt-file.pb
    EOS
  end
end

