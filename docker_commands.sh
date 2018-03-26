## list images
sudo docker ps 
sudo docker ps -a 
sudo docker images

### BUILD image
sudo docker build -t longhowlam/rstudio_plus_ml .

### push to dockerhub
sudo docker commit -m "added examples" -a "longhowlam" 4c5d78d7ff3e longhowlam/rstudio_plus_ml
sudo docker push longhowlam/rstudio_plus_ml

### run an image
sudo docker run --rm -it -p 8786:8787 -p 54321:54321 -p 8888:8888 longhowlam/rstudio_plus_ml /bin/bash

# --rm cleans up the container file system when it exits




# Delete all containers
sudo docker rm $(sudo docker ps -a -q)
# Delete all images
sudo docker rmi $(sudo docker images -q)


#####################################################################################

#run it just like rokcer/rstudio
sudo docker run -d -p 8787:8787 longhowlam/rstudio_plus_ml

#login with rstudio and password rstudio

#you can also expose h2o port and jypyter
sudo docker run -d -p 8787:8787 -p 54321:54321 -p 8888:8888 longhowlam/rstudio_plus_ml

###shell access, use 8786 if you have another rstudio running
sudo docker run --rm -it -p 8786:8787 -p 54321:54321 -p 8888:8888 longhowlam/rstudio_plus_ml /bin/bash
#start rstudio
rstudio-server start

#jupyter
jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/home'
