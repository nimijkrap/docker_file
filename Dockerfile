FROM image
MAINTAINER Jimin Park

# install zsh
RUN apt update && apt upgrade -y
RUN apt-get install -y zsh
RUN chsh -s /bin/zsh

# add user 
RUN groupadd -g 1006 jpark
RUN useradd -m -r -u 1006 -g jpark jpark -s /usr/bin/zsh

USER jpark
