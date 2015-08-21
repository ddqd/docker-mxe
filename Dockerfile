FROM ubuntu

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y autoconf automake bash bison bzip2 \
                    cmake flex gettext git g++ intltool \
                    libffi-dev libtool libltdl-dev libssl-dev \
                    libxml-parser-perl make openssl patch perl \
                    pkg-config scons sed unzip wget xz-utils g++-multilib libc6-dev-i386 git htop unzip wget ruby gperf autopoint
RUN apt-get clean
RUN git clone https://github.com/mxe/mxe.git
RUN cd mxe && make -j2
