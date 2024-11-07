### About

- Simple tool to decode .pb gtfs-rt feeds and download them locally to .json

https://github.com/colemccarren/homebrew-decode-gtfs-rt

### Installation

- If you have [**Homebrew**](https://brew.sh/), just run:
    
    ```bash
    brew install protobuf
    brew install colemccarren/decode-gtfs-rt/decode-gtfs-rt
    ```
    

### Usage

```bash
decode <local path or URL to GTFS-RT feed>
```

- Can be passed local file paths as well as live feed URLs
    - If the URL has special characters, you might need to pass the URL in quotes like so:
        - “https://example/dev/example-gtfs-rt-feed&key12345.pb”
- Downloads the decoded JSON to user’s Downloads folder
- Nothing fancy 💫
