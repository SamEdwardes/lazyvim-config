@_:
  just --list

# Remove all nvim cache and state
clean:
  rm -f lazyvim.json lazy-lock.json
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim
  rm -rf ~/.cache/nvim
