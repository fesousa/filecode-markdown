git config --global user.email "${INPUT_EMAIL}"
git config --global user.name "${INPUT_USER}|Actions"
pwd
python3 /readme_code.py
git add README.md
git commit -m $(git log -1 --pretty=%B)
git push origin master