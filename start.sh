## Clone from upstream repo
rm -rf .git
git clone $UPSTREAM_REPO tmp
mv tmp/.git .
rm -rf tmp
git reset --hard

## Get config
wget -q $CONFIG_URL -O AstrakoBot/config.py

## Run the bot
python3 -m AstrakoBot
