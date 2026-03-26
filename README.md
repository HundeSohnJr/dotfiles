# dotfiles — bobs-skull

Personal dotfiles for Philipp's home server (Ubuntu 24.04).

## What's included

- `.bashrc` — Bash config with PATH setup for bun, local bin
- `.gitconfig` — Git user config + GitHub CLI credential helper
- `CLAUDE.md` — Standing instructions for Claude Code (Bob personality)
- `claude/settings.json` — Claude Code plugin config
- `claude/settings.local.json` — Claude Code permissions

## Services running on bobs-skull

- **Claude Code** — AI assistant with Telegram, Gmail, Calendar integrations
- **Firecrawl** — Self-hosted web scraper (Docker, port 3002)
- **OneDrive** — Mounted at ~/OneDrive via rclone
- **Morning briefing** — Cron job delivering daily briefings via Telegram

## Install

```bash
git clone https://github.com/HundeSohnJr/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## Not tracked (sensitive)

- `.claude/credentials.json`
- `.claude/channels/telegram/.env`
- `rclone.conf`
- SSH keys
