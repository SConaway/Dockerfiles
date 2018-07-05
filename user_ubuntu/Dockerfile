FROM ubuntu:18.04


RUN apt-get update && echo Updated && apt-get install sudo && \
  echo Sudo Installed && apt-get autoremove && echo Autoremoved && \
  apt-get clean && echo Cleaned && apt-get check && echo Checked && \
  rm -rf /var/lib/apt/lists/*

RUN useradd user
RUN echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user
RUN chmod 0440 /etc/sudoers.d/user

USER user

RUN sudo mkdir /home/user
