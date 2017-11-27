# my-dotfiles
dotfiles for Arch Linux

#must add any and all files before commiting / pushing
#ok..

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