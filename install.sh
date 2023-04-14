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
git clone https://github.com/skinnyfads/jcnf.git

japanize_log "move the repository into the home directory"
mv jcnf ~

japanize_fn="function command_not_found_handler() {
  sh ~/jcnf/main.sh \$1
  return 127
}"
if ! grep -Fx -f <(echo "$japanize_fn") ~/.zshrc; then
  japanize_log "setting up .zshrc"
  echo "# https://github.com/skinnyfads/jcnf" >> ~/.zshrc
  echo "$japanize_fn" >> ~/.zshrc
fi
source ~/.zshrc

japanize_log "japanize installed successfully, please reopen your terminal or type this command:"
japanize_code "source ~/.zshrc"
japanize_log "to apply the changes"

