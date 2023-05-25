#!/usr/bin/env sh

japanize_log() {
  GREEN='\033[0;32m'
  RESET='\033[0m'
  echo -e "- ${GREEN}$1${RESET}"
}
japanize_code() {
  YELLOW='\033[0;33m'
  RESET='\033[0m'
  echo -e "- ${YELLOW}$1${RESET}"
}
japanize_path=~/jcnf

if [ -d "$japanize_path" ]; then
  japanize_log "installation already exists, trying to delete"
  rm -rf "$japanize_path"
fi
japanize_log "clone skinnyfads/jcnf from github repository"
git clone https://github.com/skinnyfads/jcnf.git --depth 1

japanize_log "move the repository into the home directory"
mv jcnf ~

japanize_bash_fn="function command_not_found_handle() {
  sh ~/jcnf/main.sh \$1
  return 127
}"
if ! grep -Fx -f <(echo "$japanize_bash_fn") ~/.bashrc; then
  japanize_log "setting up .bashrc"
  echo "# https://github.com/skinnyfads/jcnf" >> ~/.bashrc
  echo "$japanize_bash_fn" >> ~/.bashrc
fi

japanize_zsh_fn="function command_not_found_handler() {
  zsh ~/jcnf/main.sh \$1
  return 127
}"
if ! grep -Fx -f <(echo "$japanize_zsh_fn") ~/.zshrc; then
  japanize_log "setting up .zshrc"
  echo "# https://github.com/skinnyfads/jcnf" >> ~/.zshrc
  echo "$japanize_zsh_fn" >> ~/.zshrc
fi

japanize_fish_fn="function fish_command_not_found
  fish ~/jcnf/main.fish \$argv[1]
end"
if ! grep -Fx -f <(echo "$japanize_fish_fn") ~/.config/fish/config.fish; then
  japanize_log "setting up config.fish"
  echo "# https://github.com/skinnyfads/jcnf" >> ~/.config/fish/config.fish
  echo "$japanize_fish_fn" >> ~/.config/fish/config.fish
fi

japanize_log "japanize installed successfully, please reopen your terminal or type this command:"
japanize_code "source ~/.bashrc"
japanize_code "source ~/.zshrc"
japanize_code "source ~/.config/fish/config.fish"
japanize_log "to apply the changes"

