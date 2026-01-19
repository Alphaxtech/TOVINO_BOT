if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Alphaxtech/TOVINO_BOT.git /TOVINO_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NEELI_XBOT
fi
cd /NEELI_XBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
