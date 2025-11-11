# Blue-Team
<img src="https://github.com/hareekshith/blue-team-docker/blob/main/Home_CS_LAB.png" alt="Poster"> <br>
A project created with for the people who are learning/working on the domains of blue-teams. This is like their playground, test the vulnerabilities, analyse the exploits and then fix em.

## Contents
- Ubuntu (Acts as the vulnerable PC!)
- Kali Rolling (Acts as the attack box)
- Wazuh (Acts as the log displayer!)

## How to Setup?
- Clone this project <br>
```git clone https://github.com/hareekshith/blue-team-docker```
- Change your terminal directory to the folder named blue-team-docker <br>
```cd blue-team-docker```
- Make sure that docker is running <br>
```sudo dockerd (or) sudo systemctl start docker```
- Build and Install all the containers using docker-compose! <br>
```sudo docker compose up -d --build```
- Go inside kali's docker container and execute the below command <br>
```sudo docker exec -it blue-team-docker-kali-1 /bin/bash```
- Use ssh technique to ssh into the target pc (hostname: vulnerable, password: dockerpassword) <br>
```ssh dockeruser@vulnerable```

## How the dev wishes that you use it?
- Connect the Ubuntu with Kali using the open ssh port in Kali
- Setup the vulnerability(s)
- View the logs in the Wazuh's Website UI (Wazuh-Dashboard/Kibana)
- Play around!

## Thanks
- <a href="https://github.com/wazuh/wazuh-docker">Wazuh's Docker Repository</a>
- Docker images of kali and ubuntu
