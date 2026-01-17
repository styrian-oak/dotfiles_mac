I'm learning about dotfiles at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

# Restore Instructions
1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. `git clone https://github.com/eieioxyz/dotfiles_macos.git ~/.dotfiles`. We'll start with `https` but switch to `ssh` after everything is installed.
3. `cd ~/.dotfiles`
4. Do one last Software Audit by editing [Brewfile](Brewfile) directly.
6. [`./setup.zsh`](setup.zsh)
7. Restart computer.
8. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

## SSH instructions
```zsh
# Generate SSH key in default location (~/.ssh/config)
ssh-keygen -t ed25519 -C "242596607+styrian-oak@users.noreply.github.com"

# Start the ssh-agent
eval "$(ssh-agent -s)"

# Create config file with necessary settings
<< EOF > ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOF

# Add private key to ssh-agent 
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Copy public key and add to github.com > Settings > SSH and GPG keys
pbcopy < ~/.ssh/id_ed25519.pub

# Test SSH connection, then verify fingerprint and username
# https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
ssh -T git@github.com

# Switch from HTTPS to SSH
git remote set-url origin git@github.com:styrian-oak/dotfiles_mac.git
```

## Generate new GPG key
- `gpg-connect-agent reloadagent /bye`
- `gpg --full-generate-key`
