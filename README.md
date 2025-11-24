I'm learning about dotfiles at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

# SSH instructions
```zsh
# Generate SSH key in default location (~/.ssh/config)
ssh-keygen -t ed25519 -C "242596607+styrian-oak@users.noreply.github.com"

# Start the ssh-agent
eval "$(ssh-agent -s)"

# Create config file with necessary settings
<< EOF > ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
EOF

# Add private key to ssh-agent 
ssh-add ~/.ssh/id_ed25519

# Copy public key and add to github.com > Settings > SSH and GPG keys
pbcopy < ~/.ssh/id_ed25519.pub

# Test SSH connection, then verify fingerprint and username
# https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
ssh -T git@github.com

# Switch from HTTPS to SSH
git remote set-url origin git@github.com:styrian-oak/dotfiles_mac.git
```
