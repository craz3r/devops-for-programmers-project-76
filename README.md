### Hexlet tests and linter status:
[![Actions Status](https://github.com/craz3r/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/craz3r/devops-for-programmers-project-76/actions)

### System requirements:

- OS: Windows (WSL), Linux, MacOS
- Ansible

#### Setup dependencies

`make setup`

Before start yout application you should create a file .vault_pass with your ansible vault password, make sure that is not executable

`echo 'your_vault_password' > .vault_pass`

#### Deploy and run application

`make deploy-application`

#### Application is available on following address

[Redmine application](http://www.nsigov.site/)
