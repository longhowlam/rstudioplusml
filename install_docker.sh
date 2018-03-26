sudo apt-get remove docker docker-engine docker.io

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update

sudo apt-get install -y docker-ce


### pull neo4j as a test
sudo docker pull neo4j

### shiny docker 
sudo docker pull rocker/shiny

#### pull rstudio_ml 
sudo docker pull longhowlam/rstudio_plus_ml
