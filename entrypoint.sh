git config --global user.email "fernandosousa.ti@gmail.com"
git config --global user.name "Fernando Sousa|Actions"
git clone https://github.com/${INPUT_OWNER}/${INPUT_REPO}.git       
python3 .github/workflows/readme_code.py ${INPUT_REPO}
cd ${INPUT_REPO}
git add README.md
git commit -m 'alteração readme'
git push origin master