#!/bin/bash
docker-compose up -d
ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
docker-compose down