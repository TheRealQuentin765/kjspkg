if [ `id -u` != 0 ]
then
    sudo -v
fi

echo "Installation started..."

sudo rm -f /usr/local/bin/kjspkg

sudo touch /usr/local/bin/kjspkg
sudo sh -c "curl -s https://raw.githubusercontent.com/Modern-Modpacks/kjspkg/main/app.py > /usr/local/bin/kjspkg"
pip -q install $(curl -s https://raw.githubusercontent.com/Modern-Modpacks/kjspkg/main/requirements.txt)
sudo chmod +x /usr/local/bin/kjspkg

echo "Done!"