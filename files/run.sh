ansible-playbook -i host deploy.yaml \
  --extra-vars "ssh_pass=$1 docker_image=gcr.io/bold-guide-319308/github.com/kingston9798/nodejs:$2"
