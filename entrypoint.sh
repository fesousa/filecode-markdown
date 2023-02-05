git config --global user.email "${INPUT_EMAIL}"
git config --global user.name "${INPUT_USER}|Actions"
git config --global --add safe.directory *
pwd
python3 /readme_code.py
git add README.md
MSG="$(git show -s --format=%s)"
git commit -m "$MSG"
git push origin master