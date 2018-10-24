FROM python:3

RUN pip install ansible
RUN mkdir -p /home/ubuntu/ansible

WORKDIR /home/ubuntu/ansible
COPY ./ansible /home/ubuntu/ansible

# CMD while sleep 10; do echo "I'm working!"; done
CMD ANSIBLE_NOCOWS=1 ansible-playbook --connection=local playbook.yml
