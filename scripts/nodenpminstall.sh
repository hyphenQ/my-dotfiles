echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.zshrc
. ~/.zshrc
mkdir $HOME/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=$HOME/local
make install
