FROM user_ubuntu

RUN sudo apt-get update && echo Updated && sudo apt-get upgrade -y && \
  echo Upgraded && sudo apt-get install sudo && echo Sudo Installed && \
  sudo apt-get autoremove && echo Autoremoved && sudo apt-get clean && echo Cleaned && \
  sudo apt-get check && echo Checked

RUN sudo apt-get install curl wget git -y

RUN echo Normal User Works

RUN sudo echo Sudo User Works
