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
ls
nano Dockerfile
git add .
git commit -m "ockerfile added"
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git push -M main
git push -u origin main
nano Jenkinsfile
git add .
git commit -m "Jenkinsfile added"
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git push -u origin main
sudo apt install -y wget gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo gpg --dearmor -o /usr/share/keyrings/trivy.gpg
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] \
https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt install -y trivy
sudo apt update
sudo apt install -y wget gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo gpg --dearmor -o /usr/share/keyrings/trivy.gpg
ls -l /usr/share/keyrings/trivy.gpg
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] \
https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/trivy.list
cat /etc/apt/sources.list.d/trivy.list
sudo apt update
sudo rm -f /etc/apt/sources.list.d/trivy.list
sudo apt update
wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.50.2_Linux-64bit.tar.gz
tar -xvf trivy_0.50.2_Linux-64bit.tar.gz
ls
wget https://www.google.com -O test.html
ls
rm test.html
wget https://github.com/aquasecurity/trivy/releases/download/v0.50.2/trivy_0.50.2_Linux-64bit.tar.gz
tar -xvf trivy_0.50.2_Linux-64bit.tar.gz
ls
ls -la
sudo mv trivy /usr/local/bin/
sudo chmod +x /usr/local/bin/trivy
trivy image myapp:latest
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
ip a
ls
sudo rm -rf trivy_0.50.2_Linux-64bit.tar.gz 
ls
nano Jenkinsfile
git add .
history
git commit -m "trivy installed"
git push -m main
git push -m origin main
git push -u origin main
ls
which trivy
sudo rm -f /usr/local/bin/trivy
which trivy
rm -rf ~/.cache/trivy
sudo rm -rf /var/lib/trivy
sudo rm -rf /var/tmp/trivy*
rm -f ~/trivy_*Linux*.tar.gz
trivy --version
ls
rm Jenkinsfiley
nano Jenkinsfile 
git add .
git commit -m "trivy"
git push -u origin main
git rm -r --cached .cache
.cache/trivy/db/trivy.db
git status
git ls-files | grep cache
cat .gitignore
nano .gitignore
ls -la | grep gitignore
cat .gitignore
git add .gitignore
git commit -m "Add .gitignore to exclude Trivy and build caches"
git push -u origin main
sudo apt update
sudo apt install -y git-filter-repo
git filter-repo --help
git filter-repo --path .cache/trivy/db/trivy.db --invert-paths
git log --stat | grep trivy
git filter-repo --force --path .cache/trivy/db/trivy.db --invert-paths
git push -u origin main --force
cd ~
git clone https://github.com/sandippatil17/DevSecOps-Project.git clean-repo
cd clean-repo
git filter-repo --path .cache/trivy/db/trivy.db --invert-paths
git push origin main --force
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git remote -v
git push -u origin main --force
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git push -u origin main --force
ls
cd
ls
nano Jenkinsfile 
git add .
git commit -m "trivy"
git push -u origin main
git rm --cached clean-repo
git status
git commit -m "Remove mistakenly added clean-repo submodule"
git remote add origin https://github.com/sandippatil17/DevSecOps-Project.git
git remote -v
git push -u origin main --force
ls
git rm --cached clean-repo
ls
rm -rf clean-repo
ls
git add .
git commit -m "trivy.."
git push -u origin main
ls
nano Jenkinsfile 
git add .
git commit -m "ansible"
git push -u origin main
ls
nano Jenkinsfile 
git add .
git commit -m "ansible added"
git push -u origin main
nano Jenkinsfile 
git add .
git commit -m "ansible added"
git push -u origin main
cd ~/ansible-nginx   # or your project repo
ls
cd ~/ansible-nginx
cd ~
ls
nano hosts
nano nginx.yml
mkdir site
cd site
nano index.html
cd
git add .
git commit -m "ansible added"
git push -u origin main
ssh star@192.168.56.138
exit
