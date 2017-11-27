# my-dotfiles
dotfiles for Arch Linux

#must add any and all files before commiting / pushing

git config --global user.name "hyphenQ"
git config --global user.email "email@domain.com"


cd ~
git init

git remote add origin https://github.com/hyphenQ/my-dotfiles.git

git fetch --all
git reset --hard origin/master

echo "# a comment" >> .bashrc
git add .bashrc
git commit -m "test"
git push origin master

git config --global alias.nccommit 'commit -a --allow-empty-message -m ""'

.bashrc
	export EDITOR='program'
	export VISUAL='program'

++++++++++++++++
ARCH SETUP CLEAN
++++++++++++++++
git init --bare $HOME/.my-dotfiles

alias mydotfiles='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'
# alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
mydotfiles config status.showUntrackedFiles no

mydotfiles remote add origin git@github.com:hyphenQ/my-dotfiles.git
# mydotfiles remote add origin https://github.com/hyphenQ/my-dotfiles.git
-----
Usage
-----
mydotfiles status
mydotfiles add .gitconfig
mydotfiles commit -m 'Add gitconfig'
mydotfiles push

-----------
Replication
-----------
git clone --separate-git-dir=$HOME/.my-dotfiles https://github.com/Siilwyn/my-dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp


pacaur -S gksu
pacaur -Sc #clean cache files



TRY 2 - WORKS

git clone --bare https://github.com/hyphenQ/my-dotfiles.git $HOME/.cfg

This is my way.
cd ~/.cfg (the path of your bare repository)
git remote add <name> <url> (add your remote repository)
git push <repository> (the name of the "remote" repository)

git remote add origin git@github.com:hyphenQ/my-dotfiles.git

TEST GITHUB LOGIN:
ssh -T git@github.com

git clone --bare git@github.com:hyphenQ/my-dotfiles.git $HOME/.cfg

NOTE:
Now, we can explicitly checkout the files. Again, we need to force git to overwrite our current files. We can do that by "resetting" back to the state that the files were in from our remote repo:
git reset --hard origin/master
< ~/.zsh/aliases.zsh
FIXING PERMISSIONS:
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
sudo chmod 644 ~/.ssh/known_hosts
sudo chmod 755 ~/.ssh

START SSH-AGENT:
eval `ssh-agent -s`
ssh-add

LIST RECENTLY INSTALLED PACKAGES:
cat /var/log/pacman.log
cat /var/log/pacman.log | grep -i installed
cat /var/log/pacman.log | grep -i upgraded
cat /var/log/pacman.log | grep -iE 'installed|upgraded'


git config --global core.excludesfile ~/.gitignore_global