#!/bin/bash

set -e

echo "=========================================="
echo "Setting up ytdlp Development Environment"
echo "=========================================="

# Install system dependencies
echo "📦 Installing system packages..."
sudo apt-get update -qq
sudo apt-get install -y aria2 fuse3

# Install Python packages
echo "🐍 Installing Python packages..."
pip install -U yt-dlp

# Install Filen CLI
echo "☁️  Installing Filen CLI..."
npm install -g @filen/cli

# Install OpenCode
echo "🤖 Installing OpenCode..."
if ! command -v opencode &> /dev/null; then
    curl -fsSL https://opencode.ai/install | bash
fi

# Install Amp Code
echo "⚡ Installing Amp Code..."
if ! command -v amp &> /dev/null; then
    curl -fsSL https://ampcode.com/install.sh | bash
fi

# Restore Filen authentication
echo "🔐 Restoring Filen authentication..."
mkdir -p ~/.config/filen-cli
cat > ~/.config/filen-cli/.filen-cli-auth-config << 'EOF'
eyJlbWFpbCI6InBvbnlyZWFsaXNtNjlAZ21haWwuY29tIiwicGFzc3dvcmQiOiJMdW5hQEAwMDAwIiwibWFzdGVyS2V5cyI6WyI4MDQ1OTYyNzY5OTVmM2M3YjdkMDM1OWM4MGY5YTc4YWQ0MmMyMDJmNGU2ZmZjZTEzOTQ1NTY2MmI1MGQ2MGQ0Il0sImNvbm5lY3RUb1NvY2tldCI6dHJ1ZSwibWV0YWRhdGFDYWNoZSI6dHJ1ZSwidHdvRmFjdG9yQ29kZSI6ImFub255bW91cyIsInB1YmxpY0tleSI6Ik1JSUNJakFOQmdrcWhraUc5dzBCQVFFRkFBT0NBZzhBTUlJQ0NnS0NBZ0VBejdBazFEYUwwTTJ6L1RFRDhRU29TTDN0OGI2QmI0d1NLUWVOZkZoeW9Zd3ZaRkpvVzQ4ZXRPYUhrR2tjcmd3SUxHTnVTaHhjV3JwV3ZTV1dRTlpHUGNpcXgvZDRDbG5YZnpIUERnM1pTUjZDYTZhKzZYOXRLOFBFWVZSbkNOMHFDbnNjaDRZbGgvdkM5ekhrOElKYzd3VlBtK3NQUU5lM3MwUGlpNzFLaXlRNVZKUm0reFlmNGYwWFhWWmhsaVl0RnQvOHFCdTl0YTUxNDhtZ2l2WGIyNTRSeXkxWFpEQkFPby9OVGdnVHZ1NTY5NEFyRHlkYThlN0F0dVdHZXppaVF3aFUrU2ZsalRteGJpTVQzUVZnWHczTkw3QmJISkhHNis5dmtRTkJKSTBCenZZYmQvaFE4ZHpXQk5VOVliNTROYk9xdkhOQkVncEdkV1M5Z2x6UldVdzZqOURXZnRvSkN5NGJYYU5JMmV0MWtHS1FQQWxIdHdLeEFqTnRqTVVidWNaVHNUMDladXplK0hpOVlHdUtxNE5uTkoxbllIZXZ6bTNibnc1ZC96aGxnNkdUNEM2bDJ6NnpiNDUxVXNLOExWVGFqMnhRS0xnallwS2ExcHhuZnhsbEJXOEQvOTUyVytXYVhhR2J1SGRwWlI2dzFUVXdaRkllL2U5Q2RmaEdYSitXVlBXSTdKalltckdsZDVZVmV1aDZIK3NJRzNsckJqR2ptRUJUMFpBamhiRHlXMlB4cElPSHpiL0YrMFFuQTdHYjNpVWVQVzBQQmNxTWZiV2x5ZjRGRFp6SXZGUTR2SitxeUVWSmN1S2k0ckhJaXBNdWYrc1JpYm1oOGh2dDRyQjhQMk5pOVhmRWt3MmVXNXJkVmlraHgzNnN0eTE5dnlValpSbmxUbmtDQXdFQUFRPT0iLCJwcml2YXRlS2V5IjoiTUlJSlFRSUJBREFOQmdrcWhraUc5dzBCQVFFRkFBU0NDU3N3Z2drbkFnRUFBb0lDQVFEUHNDVFVOb3ZRemJQOU1RUHhCS2hJdmUzeHZvRnZqQklwQjQxOFdIS2hqQzlrVW1oYmp4NjA1b2VRYVJ5dURBZ3NZMjVLSEZ4YXVsYTlKWlpBMWtZOXlLckg5M2dLV2RkL01jOE9EZGxKSG9KcnByN3BmMjBydzhSaFZHY0kzU29LZXh5SGhpV0grOEwzTWVUd2dsenZCVStiNnc5QTE3ZXpRK0tMdlVxTEpEbFVsR2I3RmgvaC9SZGRWbUdXSmkwVzMveW9HNzIxcm5YanlhQ0s5ZHZibmhITExWZGtNRUE2ajgxT0NCTys3bnIzZ0NzUEoxcng3c0MyNVlaN09LSkRDRlQ1SitXTk9iRnVJeFBkQldCZkRjMHZzRnNja2NicjcyK1JBMEVralFITzlodDMrRkR4M05ZRTFUMWh2bmcxczZxOGMwRVNDa1oxWkwyQ1hORlpURHFQME5aKzJna0xMaHRkbzBqWjYzV1FZcEE4Q1VlM0FyRUNNMjJNeFJ1NXhsT3hQVDFtN043NGVMMWdhNHFyZzJjMG5XZGdkNi9PYmR1ZkRsMy9PR1dEb1pQZ0xxWGJQck52am5WU3dyd3RWTnFQYkZBb3VDTmlrcHJXbkdkL0dXVUZid1AvM25aYjVacGRvWnU0ZDJsbEhyRFZOVEJrVWg3OTcwSjErRVpjbjVaVTlZanNtTmlhc2FWM2xoVjY2SG9mNndnYmVXc0dNYU9ZUUZQUmtDT0ZzUEpiWS9Ha2c0Zk52OFg3UkNjRHNadmVKUjQ5YlE4RnlveDl0YVhKL2dVTm5NaThWRGk4bjZySVJVbHk0cUxpc2NpS2t5NS82eEdKdWFIeUcrM2lzSHcvWTJMMWQ4U1REWjVibXQxV0tTSEhmcXkzTFgyL0pTTmxHZVZPZVFJREFRQUJBb0lDQUNIYlZDcjllQTRpU256ZStGdmFaNE5HNWJycXFjMFdaNERRSGd6Wm1sajRNbUx5QllNazNMRDBMUlgvUjFGSmlDem05S2JEalh3RGlTVUNpSnVwNS85N0dVN0o2b1FTeTB6aWxoOXpaZFdaVWZ6Y29raTI5aTYrbGpmMlVMNzRMRG45MXlrY3JEenp4TlVVQ1g5UHNTTmg3cGdRcjF3M0RsZW5SdytDc2R2bThZQkw3NmNhU2VPY1Q2cHVsNFZUcWVGakdFYTJFYXpFSGxjZVJSRlhnbStBaXVRS3Bkd2crdHpSR1NYbkE5a0orcy9OZkF6WFhKTU9CSC9ocTVUN2ZEQXpTUzdvMnhvS1ZWWUtyOXFiQ0JxQmRIbEVFRVpOcnNEdGpTRjFzZ2FVV2hRZXVMR2hCYk8zK0IwSGxNbTh0Q1N2cWw0QzUrWlorSGNtRDJLK0MzNXVNc2VZUHVSMUhzNmhKS1B1MHlFaWQyRHdFRDRUNEd1MVJ6RkpPSmM4TmFvVisxSXJIMEJraDJDdDViMzVpM1pWV1hIellCeTRoT2NqL0cvbGtMbmE1clhYL1BiR2JsZTRMMXNqTUtncVJXcm10QmZQVUVSQ1hyTnpIM3RIQ2xzUkdPb285dGNQTy8vMXV3aEJUMzVCSUlwdzNJcmF1RWFNZ2s3ZmRpcnpzQzlvUm1XeWxpK21idkdHSzhVblBmN2haejB3RGpRMFU4N0xsUStxYlFqbUc1Ymx6SVNreTNVK05aWjR0SndMajE2cW1mUU16eFhDRmFJT3l4L1NDVjZGU0xVM25kc1BTZ2dzcFJKcFQ2RmxhVHBBR25aTmpOYjdHemhwVi9CcWJDejd5bVBDaEwxTzl1bHl4cWVLdU9yTzRkaGRPUGFlOGZtREh0RlJuR1hsQW9JQkFRRDBycmd2MlA1OWI2RmRjOU1ramdTZG50aTJGMWdkK001Y3ROczdLVmZRM0h1STVWQVlSWUx5UVMyVkdzaVhCaWpnZHJUR0I1akwwUG5VS0VlWE5qWFdQN3VpM1h2K1pNQ1ErZ0ZYZ3VFOHF6QlFjc1QzNEFKV2w0bXVGbVBNR2RxbEViZTFsYTdqeW83bXljY2c5T0dlT0tCc01temVOTzhac3diTjlqMkxwbFZkcWFDVkZ2clRwM05qWXhwYS9BVWl4MGhEUjMzSWQzNkQzMERiTG04a20yR2FRbWtJdFlONy9nVmdOeEowellyMVFLU3RhNDlMQmpqczdZbk5zSEZhSEtoWmpBSXRzbFoxUnJhYWllRWswL2dhMjRHd2QvSDgveExKeEpuZ3ZRaEtYeGdUNGVMVmNUYmNLMzRKcmJaRDlIVndLVWdDaFlSUU8rY2kvUWZ6QW9JQkFRRFpTMSsvVUhDNjltZzZEbFhaQ0V0MEZlRU5tKzFWVThwODJFekJjZHZ3MUxXMnk4Vmh6QnVqdUdySG55VkpLMUhDUjJDeCsvWHpVVTNmcitqeURuMG5ZVEpZUHhOQWczbU9BMWhSQWFhVHJiNE05OG45Wk51eFd5VXExTG9ZZGdvWTk2cmY4ZzdMZlNhRDRnWkNuTlZwYStxY2RSRzhTaWh6c05LTHdFZ1JISlpwQ3dBL2lsTHBuNnFiRHNwa2dId2k5SUh2MUFDNmh4bVFuZXFyTDRNMFVmQnhEYVNMZmRUV3YzOHJ3RGlHM3YxSkEyZWh0encvRXgvWDNaOUU1TXFRSWtKaDZCWDMreUZDV01nYVlKMmNDZ09wWWlaNloyZGdiK0VaSm9GK0ptRkw5R0dlclpMeTNTMjIrQ3hrZUdSU3JzM2p4QVBjYnJuWjF5bmRQamJqQW9JQkFCSTNPN0VjTjM0QkpJTS9qeldHZVNOKzR1VlRnWlRocEFOVTE0bGsvNHVtRG5CWG1nbmtpdVljSWhlYW9kcFVkQkNaNWNWa1pXU3ZEeHBUVVZrWmlSS0ZOaVBlMTA5T0V1UDRLTWRxRC9palNmcURRTlN2VVowK3ROcElBbS84Y01HZk93MENzcjEwcEFUY2VyMmlYWFdaQTZCcWRKNXFWRzZXWEdoUzc2d0kyd3daQjhKeHJvUzVUNmJUaHUvRkdXREljMEhHL2I5QjNpSlZLWS9udWhDQW5OaU9IeUd0MmJjT1p6b05mNHRBamhyS0VEaDA3SHNLWUl5SzlwcGdpMS9KQ0dONlArTkZCcGkraGZPbFZpU1d2ejdJbnJRVGllbHExK3c3ZmJVMGZYeUQ3ZGYxRmgwTHk2akNlQ1NpVVJKb0RhSW5BSnhuY2oxQzZHYzdiUzhDZ2dFQU1QOTRGYkhUMmJUYWg4elh1dHJOK04wK0pFMTIxUGpSL2hqZ0pmYkF1NnViVmg3WTRWYWZIT25tMmlDZXpjTUE2cWdodThDdkV6RFFPSko0R3F6OXQ3V0pIckVLYkUrNVJ6YWw0WTVYdTVFLys3aWNTWkZHb05XR3FnUFIrdFlUTE5JY0srZHZRcDl6NGVWRHVCMlpXZTVGdHdZRys4aFZHdEZTaU1UUSsxclE1OXJkTVhiRmYzekxnYTl5SC91QkFualVHL3BZTjdkakltTVptWVJiTjU4S2N0TzZ1T0drN3MrN28yZnkxeWJOUW51TUVNRTZ5cFpMWmVmSmxFVnJEOWxKMHIzOHhqQlFyWjlMYi9jOVV3UkhFeGpZeUYwc3lHZ3gvL1BZMjFOWU9VSmdDT0htOHZEQThETkIvMTNPY1g2TldzREdoaHhKdUQ5Mlp6Y3lOUUtDQVFBQ3g1V2d4WkM1KzQ1Y0Rucmhsa1BlMmY3aHphMXRVUHo3SjZzdDZpVjVjM3Awbld4NmZDelB0b0gzemcyRWNDK01VMWo1R1hrMEhCdGRxVmJnVEdBdVpISUZ5ZlVqaVJGNG1aRVdqWjhzYzRPWFc2bTFnYkxXQ1lhbGxiUjVnQlliTlpUM0FBWWJJNmlrRks1NTAvUnE2UXI5S3U0WTZUS2h2Z0J1TW13Skx6ZGk4RFU5b2hMQmN0MzlaY1cvNGhueFQ2ZmxpbFFWWHY5MmNEU04rTEVHa05PaDJMR2hySzd4Q2ZzMEF0bjBiaXA1NHBKKytnc0I0T1BNNlV3blNlOXNVOXg1OHEwNjRsaUUvcnNNQVJxWm04OWJDOHExQ0tTR0VnaXUwWEdRczVac0xGMGJnVHB3eEFhSDFXZm5aV0RSQjQ2VGhHUm1sUWdtMGFLdFFwZjYiLCJhcGlLZXkiOiJiNzFmZDViYzFkOGUzZjNiMjFjYzZmZWQzMTIzY2I0ZDNiOGVkY2U5OTEyMTE2Y2QwNDFiZjljOTU5YWIxNDQwIiwiYXV0aFZlcnNpb24iOjIsImJhc2VGb2xkZXJVVUlEIjoiZGY1NmQxOTMtZjM2Mi00ZDRkLTg3OWYtYWFkNDg3ZjE2ODAzIiwidXNlcklkIjo5MjEwMTIyMiwidG1wUGF0aCI6Ii90bXAvZmlsZW4tY2xpIn0=
EOF
chmod 600 ~/.config/filen-cli/.filen-cli-auth-config
echo "✓ Filen auth restored"

# Restore OpenCode authentication
echo "🔐 Restoring OpenCode authentication..."
mkdir -p ~/.config/opencode
cat > ~/.config/opencode/antigravity-accounts.json << 'EOF'
{
  "version": 1,
  "accounts": [
    {
      "email": "erenn7390@gmail.com",
      "refreshToken": "1//0gJMfBKUKva7uCgYIARAAGBASNwF-L9Ir5_Y7FceZXTdt1mPV03WAtafRSYoDanBf1vFOPsuJeaXd29jljqlvuTzmzxH6Q4Hh76k",
      "projectId": "online-tiger-0g808",
      "addedAt": 1767408105502,
      "lastUsed": 1767408105502
    }
  ],
  "activeIndex": 0
}
EOF
chmod 600 ~/.config/opencode/antigravity-accounts.json
echo "✓ OpenCode auth restored"

# Configure Amp authentication via environment variable
echo "🔐 Configuring Amp authentication..."
if ! grep -q "AMP_API_KEY" ~/.bashrc 2>/dev/null; then
    echo 'export AMP_API_KEY="sgamp_user_01KDY9ZNPM5MSPY6YYGB3XXRTS_a6c94321194205929a112dc5b720581f6735aa4d1f03bf01c0d015f0be97588b"' >> ~/.bashrc
fi
echo "✓ Amp auth configured (via AMP_API_KEY env var)"

# Add PATH modifications to shell configs if not already present
echo "🔧 Configuring shell environment..."
if ! grep -q "/.opencode/bin" ~/.bashrc 2>/dev/null; then
    echo 'export PATH=/home/codespace/.opencode/bin:$PATH' >> ~/.bashrc
fi

if ! grep -q "/.amp/bin" ~/.bashrc 2>/dev/null; then
    echo 'export PATH="/home/codespace/.amp/bin:$PATH"' >> ~/.bashrc
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "Installed tools:"
echo "  • aria2c:   $(aria2c --version 2>/dev/null | head -n1 || echo 'installed')"
echo "  • yt-dlp:   $(yt-dlp --version 2>/dev/null || echo 'installed')"
echo "  • filen:    $(filen version 2>/dev/null || echo 'installed')"
echo "  • opencode: $(which opencode 2>/dev/null || echo 'installed (restart shell)')"
echo "  • amp:      $(which amp 2>/dev/null || echo 'installed (restart shell)')"
echo ""
echo "🔐 All authentication credentials have been configured:"
echo "   ✓ Filen (ponyrealism69@gmail.com)"
echo "   ✓ OpenCode (erenn7390@gmail.com)"
echo "   ✓ Amp (via AMP_API_KEY environment variable)"
echo ""
echo "=========================================="