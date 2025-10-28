# Blue-Team
A project created with for the people who are learning/working on the domains of blue-teams. This is like their playground, test the vulnerabilities, analyse the exploits and then fix em.

## Contents
- Ubuntu (Acts as the vulnerable PC!)
- Kali Rolling (Acts as the attack box)
- Wazuh (Acts as the log displayer!)

## How to Setup?
- Clone this project
```git clone https://github.com/hareekshith/blue-team-docker```
- Change your terminal directory to the folder named blue-team-docker
```cd blue-team-docker```
- Make sure that docker is running
```sudo dockerd (or) sudo systemctl start docker```
- Build the docker containers (Attacker and Target)
```sudo docker compose build ubuntu kali```
- Install all the containers using docker-compose!
```sudo docker compose up -d```
- Go inside kali's docker container and execute the below command
```sudo docker exec -it blue-team-docker-kali-1 /bin/bash```
- Use ssh technique to ssh into the target pc (hostname: vulnerable, password: dockerpassword)
```ssh dockeruser@vulnerable```


## How the dev wishes that you use it?
- Connect the Ubuntu with Kali using the open ssh port in Kali
- Setup the vulnerability(s)
- Play around!
