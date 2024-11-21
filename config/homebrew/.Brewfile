brew "asdf"
brew "awscli"
brew "bat"
brew "coreutils"
brew "fish"
brew "fzf"
brew "git-delta"
brew "git"
brew "jq"
brew "pandoc"
brew "pgcli"

if OS.mac?
  tap "homebrew/cask"
  tap "homebrew/cask-fonts"

  cask "alfred"
  cask "docker"
  cask "font-jetbrains-mono"
  cask "font-symbols-only-nerd-font"
  cask "hammerspoon"
  cask "jordanbaird-ice"
  cask "keyboardcleantool"
  cask "postman"
  cask "safeincloud-password-manager"
  cask "spotify"
  cask "visual-studio-code"
  cask "vivaldi"
  cask "wezterm"

  # Dependencies for compiled asdf programs
  brew "erlang", args: ["only-dependencies"]
end

{{read_local Brewfile}}
