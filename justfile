@_:
  just --list

# Remove all nvim cache and state
clean:
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim
  rm -rf ~/.cache/nvim
