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


Most likely your GIT_SSH_COMMAND is referencing the incorrect public key.
Try:
export GIT_SSH_COMMAND="ssh -i /home/ace/.ssh/id_rsa"
then
git clone git@github.com:organization/xxx.git

