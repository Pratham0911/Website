echo "Siri: Hi, I am your Siri. I am here to help you, before that let me know what should I call you?" 
read -p "Siri: Enter your name: " name
echo "Siri: Hey $name, Nice to see you here. Hope you will enjoy the journey with me."
echo "Siri: As I can read your mind, I came to know that you're here to deploy the website. Am I right?"
read -p "Siri: Enter in y or n: " ans
if [ $ans == "y" ];
then
echo "Siri: Hehe, One day I will become good predictor. Let's start working!"
echo "Siri: I can help you by installing all the necessary tools for you..."
read -p "Siri: Shall I begin: " answ
if [ $answ == "y" ];
then
echo "Siri: I'm installing for you...until then have a cup of coffee and message your partner How's the day going?"
echo "Siri: Installing JDK"
sudo apt update
sudo apt install openjdk-17-jre
java -version
echo "Siri: Java has been installed"
echo "Siri: Installing the automation tool Jenkins"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
echo "Siri: The Jenkins has been installed. Now you have to enable port 8080 and run on browser. It will ask you for a password."
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Siri: Paste upper result."
echo "Siri: I'll wait for 2 minutes, complete the process"
sleep 2m
echo "Siri: Let me install Docker now."
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
echo "Siri: I have installed required tools for you. Please do a favour for me by bringing smile on your face you arrogant person."
echo "Siri: I am tired now, I am going to sleep. If you need me you can run ./runme.sh"
echo "Siri: Bye Bye for a now, take care. <3"
else
echo "Siri: OK! I wouldn't then."
fi
else
echo "Siri: You know a secret, I got a talent for not predicting right. Bye, will see you later."
fi
