cd /home/app
[[ -f requirements.txt ]] && pip3 install -r requirements.txt
python3 main.py

if [ -f Procfile ]; then
  echo Using Procfile to start
  pip3 install honcho
  honcho start
fi