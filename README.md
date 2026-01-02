┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│                          y t d l p                              │
│                    Modern Media Downloader                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

A powerful, feature-rich command-line utility for downloading media content from
across the internet. Built for speed, reliability, and simplicity.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▸ QUICK START

  $ ytdlp [URL] [OPTIONS]

  Basic download:
    ytdlp https://example.com/video

  Download with custom format:
    ytdlp -f best https://example.com/video

  Save with specific filename:
    ytdlp -o "%(title)s.%(ext)s" https://example.com/video


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ FEATURES

  ✓ Multi-platform support (Windows, macOS, Linux)
  ✓ Batch downloading with playlist support
  ✓ Flexible output formatting and naming
  ✓ Automatic quality detection and fallback
  ✓ Subtitle and metadata extraction
  ✓ Resume and continue incomplete downloads
  ✓ Concurrent operations for faster performance
  ✓ Extensive format filtering options
  ✓ Post-processing with FFmpeg integration


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ INSTALLATION

  Via pip (recommended):
    pip install ytdlp

  From source:
    git clone https://github.com/lunastar0003-hue/ytdlp.git
    cd ytdlp
    pip install -e .

  System package managers:
    macOS (Homebrew):
      brew install ytdlp

    Ubuntu/Debian:
      sudo apt install ytdlp


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ COMMON OPTIONS

  Output Control:
    -o, --output TEMPLATE     Save with custom filename template
    -P, --paths DIR           Directory structure for downloads
    -w, --no-overwrites       Skip existing files

  Quality Settings:
    -f, --format FORMAT       Select video format (default: best)
    -S, --sort-fields FIELDS  Sort available formats
    --format-sort ALGO        Advanced format sorting

  Content Options:
    -x, --extract-audio       Extract audio only
    -k, --keep-video          Keep video after extraction
    --audio-format FORMAT     Audio codec (best, aac, vorbis, etc.)
    --audio-quality QUALITY   Audio bitrate (128, 192, 256, etc.)

  Subtitle Handling:
    --write-subs              Download available subtitles
    --all-subs                Download all subtitle languages
    --sub-format FORMAT       Subtitle format (srt, vtt, etc.)

  Advanced:
    -j, --dump-json           Output as JSON
    --batch-file FILE         Download from file list
    --parallel N              Number of parallel downloads


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ EXAMPLES

  Download best quality video:
    $ ytdlp https://example.com/video

  Extract audio as MP3:
    $ ytdlp -x --audio-format mp3 --audio-quality 192 URL

  Download entire playlist:
    $ ytdlp https://example.com/playlist

  Download with subtitles:
    $ ytdlp --write-subs --all-subs https://example.com/video

  Custom output naming:
    $ ytdlp -o "Videos/%(uploader)s/%(title)s.%(ext)s" URL

  Download specific format by resolution:
    $ ytdlp -f "bestvideo[height<=1080]+bestaudio/best" URL


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ DEPENDENCIES

  Required:
    • Python 3.8+
    • FFmpeg (for audio extraction and processing)

  Optional:
    • AtomicParsley (for metadata tagging)
    • Mutagen (for audio metadata)


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ CONFIGURATION

  Config files:
    ~/.ytdlp/config         Global configuration
    .ytdlp.conf             Project-specific settings

  Example config:
    [ytdlp]
    default-search = ytsearch
    output = Videos/%(title)s.%(ext)s
    quiet = True
    no-warnings = True


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ SUPPORTED SITES

  1000+ websites including:
    • YouTube
    • Vimeo
    • TikTok
    • Instagram
    • Twitch
    • SoundCloud
    • Dailymotion
    • Twitter
    • And many more...

  Full list: https://github.com/lunastar0003-hue/ytdlp/blob/master/SITES.md


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ TROUBLESHOOTING

  Video won't download:
    → Update ytdlp to the latest version
    → Check if the URL is public and accessible
    → Verify FFmpeg is installed for certain formats

  Low download speed:
    → Use --socket-timeout N to increase timeout
    → Try --fragment-retries N for fragmented streams
    → Check your internet connection

  Format unavailable:
    → Run 'ytdlp -F URL' to list all available formats
    → Use a different format selection syntax
    → Check if content is region-restricted


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ LICENSE

  GPL-3.0 License - See LICENSE file for details


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ CONTRIBUTING

  Contributions welcome! Please:
    1. Fork the repository
    2. Create a feature branch
    3. Commit your changes
    4. Push and submit a pull request

  For issues and feature requests, visit:
    https://github.com/lunastar0003-hue/ytdlp/issues


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▾ CHANGELOG

  v0.1.0 - Initial release
    • Core downloading functionality
    • Format selection
    • Basic output formatting
    • FFmpeg integration


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  Repository: https://github.com/lunastar0003-hue/ytdlp
  Issues:     https://github.com/lunastar0003-hue/ytdlp/issues
  Docs:       https://github.com/lunastar0003-hue/ytdlp/wiki

┌─────────────────────────────────────────────────────────────────┐
│  Made with dedication for media enthusiasts everywhere         │
└─────────────────────────────────────────────────────────────────┘
