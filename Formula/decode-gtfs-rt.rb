class DecodeGtfsRt < Formula
  desc "Decode GTFS-RT protobuf files to JSON"
  homepage "https://github.com/colemccarren/homebrew-decode-gtfs-rt"
  url "https://github.com/colemccarren/homebrew-decode-gtfs-rt/releases/download/0.1/decode-gtfs-rt-1.0.tar.gz"
  sha256 "46fa1b4cfd2057fcc47d7930ce7fd31806b00615919d3e58cf90a55c2c0fdc00"

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

