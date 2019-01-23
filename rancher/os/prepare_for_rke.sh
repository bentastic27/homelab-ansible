#/bin/bash


for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.system_docker.registry_mirror http://192.168.1.10:5000"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.system_docker.insecure_registry [\"192.168.1.10:5000\"]"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.docker.registry_mirror http://192.168.1.10:5000"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.docker.insecure_registry [\"192.168.1.10:5000\"]"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros engine switch docker-17.03.1-ce"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo system-docker container restart docker"; done

for i in 3 4 5; do ssh rancher@192.168.1.$i "echo  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChDQ0dn/6NrXCqNAxEXTThNWjbgjT1gxmxHXrFaoAh65pyx9NcbNO6bwT+RCv3xtNjzat6/FBpRyYtmbzlb8TgvvaorwNwbhHqfrbAid4a/TlZCdfwmN2DcHx76LLR9rj/ICzMBm6Y4cwpQv8S9wWrngqTKcGQjUsC4gn101krLCMfZNciHlHCDsZI5nETfQu0ty5/erldAgvy2Qbn4/lp4UVnZuc16uMBxLGJA8f+13xOI33/g4bJWCbwiJpMeUG1TJtaoMg4JYaJwDpTtfyXFTQR5IEtpNqrV1ZLdF+cbkMVdDrsQQrpdBfx5saYIuwalBMO///tTLIWyeZjMwhd ben@shadowfax-vm >> ~/.ssh/authorized_keys"; done

for i in 3 4 5; do ssh rancher@192.168.1.$i "echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWukHTHqzO96xKzfxH0cXXYyOmEtxjewd2YlMG/yTiwSe6PelwW/XVw0x69OL6TPMGNm/sij1+qrl1AYBjvmirmjoMIJ6YLy9VWw4CvOBpAjqkYfKAF6dbLYwlYDxJmg1tBYgZy575m+xdO06vHRg13bcT0b0O4I0+IoZdo6D2mG6qiGkNMaq6vPbDWO3UWbO5RZp6JSD2nZMuR/pciZPr/zYmJEthEMeOM5UZbvr1aQSgg+upApuTwv2JAzMBlKLrRogQ5JvAuA6DrFLEStmiJssOohU6z2eDGXJ+NphLjo77rw7OfF6ogOeEr2cTBexs7X6NCTuA6IL7kEjRHo0N ben@ben-rancher.local >> ~/.ssh/authorized_keys"; done

for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros os upgrade -f"; done
