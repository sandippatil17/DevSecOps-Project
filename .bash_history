sudo -s
exit
clear
apt install git -y
sudo apt update
sudo apt install git -y
echo "# DevSecOps-Project" >> README.md
git init
git add .
git commit -m "commit"
git config --global user.name "sandippatil17"
git config --global user.email "sandipspatil311@gmail.com"
git commit -m "commit"
git branch -M main
git branch
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git push -u origin main
