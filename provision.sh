#!/usr/bin/env bash
git clone -b final https://github.com/thecodingbrain/bookiemarker-frontend.git /vagrant/frontend
git clone -b final https://github.com/thecodingbrain/bookiemarker-backend.git /vagrant/backend
git clone -b final https://github.com/thecodingbrain/bookiemarker-worker.git /vagrant/worker
cp -f /vagrant/settings.py /home/codingbrain/config
sudo service codingbrain restart