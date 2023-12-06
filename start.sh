if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Zziwadavid51/my-lady-princess.git /my-lady-princess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /my-lady-princess
fi
cd /my-lady-princess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
