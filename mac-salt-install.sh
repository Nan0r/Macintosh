brew install python
brew install swig
brew install zmq
sudo pip install --upgrade setuptools
pip install salt
sudo mkdir /usr/local/etc/salt
sudo curl -k https://raw.githubusercontent.com/saltstack/salt/develop/conf/minion -o /usr/local/etc/salt/minion
echo -e "master: salt.alkivi.fr \nid: $(hostname -f)" | sudo tee -a /usr/local/etc/salt/minion
sudo curl -k https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist -o /Library/LaunchDaemons/com.saltstack.salt.minion.plist
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist
sudo launchctl enable -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist

