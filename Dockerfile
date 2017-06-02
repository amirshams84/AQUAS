FROM centos:latest
MAINTAINER Amir Shams <amir.shams84@gmail.com>
##############################################################
# Dockerfile Version:   1.0
# Software:             centos7
# Software Version:     7.0
# Software Website:     https://www.centos.org/
# Description:          Centos7
##############################################################
RUN yum -y update ;
RUN yum clean all ;
RUN yum install -y epel-release ;
RUN yum install -y ansible git gcc gcc-c++ make net-tools sudo which wget file patch libtool texinfo tar unzip bzip2 bzip2-devel ; 
RUN yum install -y openssl openssl-devel readline readline-devel sqlite-devel tk-devel zlib zlib-devel ncurses-devel python-pip mc ;
RUN yum install -y tbb psmisc python-devel;
RUN yum install -y java-1.8.0-openjdk
RUN yum clean all ;

##############################################################
# Dockerfile Version:   1.0
# Software:             CONDA
# Software Version:     7.0
# Software Website:     ..
# Description:          CONDA
##############################################################
RUN wget http://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -f -p $HOME/miniconda
RUN export PATH="$HOME/miniconda/bin:$PATH"
##############################################################
# Dockerfile Version:   1.0
# Software:             BIG DATA SCRIPT
# Software Version:     7.0
# Software Website:     ..
# Description:          BIG DATA SCRIPT
##############################################################
RUN wget https://github.com/leepc12/BigDataScript/blob/master/distro/bds_Linux.tgz?raw=true -O bds_Linux.tgz
RUN mv bds_Linux.tgz $HOME && cd $HOME && tar zxvf bds_Linux.tgz
RUN export PATH=$PATH:$HOME/.bds
RUN export _JAVA_OPTIONS="-Xms256M -Xmx728M -XX:ParallelGCThreads=1"
##############################################################
# Dockerfile Version:   1.0
# Software:             AQUAS
# Software Version:     7.0
# Software Website:     ..
# Description:          AQUAS
##############################################################
RUN git clone https://github.com/kundajelab/TF_chipseq_pipeline
RUN cd TF_chipseq_pipeline
RUN bash install_dependencies.sh


