# ytdlp

> Modern Media Downloader - A powerful, feature-rich command-line utility for downloading media content from across the internet.

## 🔄 Quick Setup for New Codespaces

Run this once in your new Codespace to set up all tools with authentication:

```bash
bash setup.sh
```

This will install and configure:
- aria2, ffmpeg, yt-dlp
- Filen CLI (authenticated)
- OpenCode/AntiGravity (authenticated)
- Amp Code (authenticated)

---

## Quick Start

```bash
# Basic download
ytdlp https://example.com/video

# Download with custom format
ytdlp -f best https://example.com/video

# Save with specific filename
ytdlp -o "%(title)s.%(ext)s" https://example.com/video
```

---

## Features

- **Multi-platform support** - Windows, macOS, Linux
- **Batch downloading** - Playlist support
- **Flexible output formatting** - Custom naming templates
- **Automatic quality detection** - Format fallback
- **Subtitle & metadata extraction** - Multiple formats
- **Resume capability** - Continue incomplete downloads
- **Concurrent operations** - Faster performance
- **Format filtering** - Advanced selection options
- **FFmpeg integration** - Post-processing support

---

## Installation

### Via pip (recommended)

```bash
pip install ytdlp
```

### From source

```bash
git clone https://github.com/lunastar0003-hue/ytdlp.git
cd ytdlp
pip install -e .
```

### System package managers

**macOS (Homebrew):**
```bash
brew install ytdlp
```

**Ubuntu/Debian:**
```bash
sudo apt install ytdlp
```

---

## Common Options

### Output Control
| Option | Description |
|--------|-------------|
| `-o, --output TEMPLATE` | Save with custom filename template |
| `-P, --paths DIR` | Directory structure for downloads |
| `-w, --no-overwrites` | Skip existing files |

### Quality Settings
| Option | Description |
|--------|-------------|
| `-f, --format FORMAT` | Select video format (default: best) |
| `-S, --sort-fields FIELDS` | Sort available formats |
| `--format-sort ALGO` | Advanced format sorting |

### Content Options
| Option | Description |
|--------|-------------|
| `-x, --extract-audio` | Extract audio only |
| `-k, --keep-video` | Keep video after extraction |
| `--audio-format FORMAT` | Audio codec (best, aac, vorbis, etc.) |
| `--audio-quality QUALITY` | Audio bitrate (128, 192, 256, etc.) |

### Subtitle Handling
| Option | Description |
|--------|-------------|
| `--write-subs` | Download available subtitles |
| `--all-subs` | Download all subtitle languages |
| `--sub-format FORMAT` | Subtitle format (srt, vtt, etc.) |

### Advanced
| Option | Description |
|--------|-------------|
| `-j, --dump-json` | Output as JSON |
| `--batch-file FILE` | Download from file list |
| `--parallel N` | Number of parallel downloads |

---

## Examples

### Download best quality video
```bash
ytdlp https://example.com/video
```

### Extract audio as MP3
```bash
ytdlp -x --audio-format mp3 --audio-quality 192 https://example.com/video
```

### Download entire playlist
```bash
ytdlp https://example.com/playlist
```

### Download with subtitles
```bash
ytdlp --write-subs --all-subs https://example.com/video
```

### Custom output naming
```bash
ytdlp -o "Videos/%(uploader)s/%(title)s.%(ext)s" https://example.com/video
```

### Download specific format by resolution
```bash
ytdlp -f "bestvideo[height<=1080]+bestaudio/best" https://example.com/video
```

---

## Dependencies

### Required
- Python 3.8 or higher
- FFmpeg (for audio extraction and processing)

### Optional
- AtomicParsley (for metadata tagging)
- Mutagen (for audio metadata)

---

## Configuration

Configuration files can be placed in:
- `~/.ytdlp/config` (global configuration)
- `.ytdlp.conf` (project-specific settings)

### Example config

```ini
[ytdlp]
default-search = ytsearch
output = Videos/%(title)s.%(ext)s
quiet = True
no-warnings = True
```

---

## Supported Sites

Over 1000 websites including:

- YouTube
- Vimeo
- TikTok
- Instagram
- Twitch
- SoundCloud
- Dailymotion
- Twitter
- And many more...

**Full list:** See [SITES.md](https://github.com/lunastar0003-hue/ytdlp/blob/master/SITES.md)

---

## Troubleshooting

### Video won't download
- Update ytdlp to the latest version
- Check if the URL is public and accessible
- Verify FFmpeg is installed for certain formats

### Low download speed
- Use `--socket-timeout N` to increase timeout
- Try `--fragment-retries N` for fragmented streams
- Check your internet connection

### Format unavailable
- Run `ytdlp -F URL` to list all available formats
- Use a different format selection syntax
- Check if content is region-restricted

---

## License

GPL-3.0 License - See [LICENSE](LICENSE) file for details

---

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push and submit a pull request

For issues and feature requests: [GitHub Issues](https://github.com/lunastar0003-hue/ytdlp/issues)

---

## Changelog

### v0.1.0 - Initial release
- Core downloading functionality
- Format selection
- Basic output formatting
- FFmpeg integration

---

## Links

- **Repository:** https://github.com/lunastar0003-hue/ytdlp
- **Issues:** https://github.com/lunastar0003-hue/ytdlp/issues
- **Wiki:** https://github.com/lunastar0003-hue/ytdlp/wiki

---

<div align="center">Made with dedication for media enthusiasts everywhere</div>
