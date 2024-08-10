FROM amazonlinux

RUN yum install git gcc tar -y

RUN curl https://raw.githubusercontent.com/BlakeASmith/configthing/main/install.sh | sh
RUN (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /root/.bashrc
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
RUN yum groupinstall 'Development Tools' -y
RUN /home/linuxbrew/.linuxbrew/bin/brew install gcc
RUN curl https://raw.githubusercontent.com/BlakeASmith/configthing/main/install.sh | sh
