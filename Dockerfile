FROM ubuntu:20.04

RUN sed -i "s@path-exclude=/usr/share/man/*@# path-exclude=/usr/share/man/*@g" /etc/dpkg/dpkg.cfg.d/excludes

RUN apt-get update && \
    apt install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    strace \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system \
    man \
    vim \
    bash-completion

RUN adduser yujiro
RUN adduser yujiro libvirt
RUN adduser yujiro libvirt-qemu
RUN adduser yujiro kvm

RUN cd /home/yujiro \
    && mkdir workdir

WORKDIR /home/yujiro/workdir
