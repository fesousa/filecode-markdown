git config --global user.email "fernandosousa.ti@gmail.com"
git config --global user.name "Fernando Sousa|Actions"ls    
python3 /readme_code.py ${INPUT_REPO}
git add README.md
git commit -m 'alteração readme'
git push origin master