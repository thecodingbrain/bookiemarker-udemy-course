git clone -b final https://github.com/thecodingbrain/bookiemarker-frontend.git frontend
git clone -b final https://github.com/thecodingbrain/bookiemarker-backend.git backend
git clone -b final https://github.com/thecodingbrain/bookiemarker-worker.git worker
cp -f /vagrant/settings.py /home/codingbrain/config
sudo service codingbrain restart