#/bin/bash

for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros engine switch docker-17.03.1-ce"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.docker.registry_mirror http://192.168.1.10:5000"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo ros config set rancher.docker.insecure_registry [\"192.168.1.10:5000\"]"; done
for i in 3 4 5; do ssh rancher@192.168.1.$i "sudo system-docker container restart docker"; done

ssh rancher@192.168.1.3 "echo  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChDQ0dn/6NrXCqNAxEXTThNWjbgjT1gxmxHXrFaoAh65pyx9NcbNO6bwT+RCv3xtNjzat6/FBpRyYtmbzlb8TgvvaorwNwbhHqfrbAid4a/TlZCdfwmN2DcHx76LLR9rj/ICzMBm6Y4cwpQv8S9wWrngqTKcGQjUsC4gn101krLCMfZNciHlHCDsZI5nETfQu0ty5/erldAgvy2Qbn4/lp4UVnZuc16uMBxLGJA8f+13xOI33/g4bJWCbwiJpMeUG1TJtaoMg4JYaJwDpTtfyXFTQR5IEtpNqrV1ZLdF+cbkMVdDrsQQrpdBfx5saYIuwalBMO///tTLIWyeZjMwhd ben@shadowfax-vm >> ~/.ssh/authorized_keys"

ssh rancher@192.168.1.5 "echo  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChDQ0dn/6NrXCqNAxEXTThNWjbgjT1gxmxHXrFaoAh65pyx9NcbNO6bwT+RCv3xtNjzat6/FBpRyYtmbzlb8TgvvaorwNwbhHqfrbAid4a/TlZCdfwmN2DcHx76LLR9rj/ICzMBm6Y4cwpQv8S9wWrngqTKcGQjUsC4gn101krLCMfZNciHlHCDsZI5nETfQu0ty5/erldAgvy2Qbn4/lp4UVnZuc16uMBxLGJA8f+13xOI33/g4bJWCbwiJpMeUG1TJtaoMg4JYaJwDpTtfyXFTQR5IEtpNqrV1ZLdF+cbkMVdDrsQQrpdBfx5saYIuwalBMO///tTLIWyeZjMwhd ben@shadowfax-vm >> ~/.ssh/authorized_keys"

ssh rancher@192.168.1.4 "echo  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChDQ0dn/6NrXCqNAxEXTThNWjbgjT1gxmxHXrFaoAh65pyx9NcbNO6bwT+RCv3xtNjzat6/FBpRyYtmbzlb8TgvvaorwNwbhHqfrbAid4a/TlZCdfwmN2DcHx76LLR9rj/ICzMBm6Y4cwpQv8S9wWrngqTKcGQjUsC4gn101krLCMfZNciHlHCDsZI5nETfQu0ty5/erldAgvy2Qbn4/lp4UVnZuc16uMBxLGJA8f+13xOI33/g4bJWCbwiJpMeUG1TJtaoMg4JYaJwDpTtfyXFTQR5IEtpNqrV1ZLdF+cbkMVdDrsQQrpdBfx5saYIuwalBMO///tTLIWyeZjMwhd ben@shadowfax-vm >> ~/.ssh/authorized_keys"
