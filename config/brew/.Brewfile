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
brew "postgresql"
brew "ripgrep"
brew "yarn"

if OS.mac?
  tap "homebrew/cask"
  tap "homebrew/cask-fonts"

  cask "alfred"
  cask "docker"
  cask "font-jetbrains-mono"
  cask "google-chrome"
  cask "hammerspoon"
  cask "hiddenbar"
  cask "kitty"
  cask "notion"
  cask "postman"
  cask "rescuetime"
  cask "spotify"
  cask "visual-studio-code"

  # Dependencies for compiled asdf programs
  brew "erlang", args: ["only-dependencies"]
  brew "postgresql", args: ["only-dependencies"]
end
