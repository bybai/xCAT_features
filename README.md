## Shortcuts 

1. Modify the hosts file, if running on the xCAT management node, included `localhost` as the name of the node in the hosts file 

2. If need costomize variables, modify xcat-automation/fast_cluster.yaml. If need customize xcat-inventory data, modify xcat-automation/templates/

3. Execute playbooks using the following: `ansible-playbook fast_cluster.yaml`


### Useful commands

* `ansible-playbook -i hosts install.yaml --list-hosts`
* To find out the variables and inventory available on the hosts: 

   `ansible -m setup -i hosts <hostname>` 
