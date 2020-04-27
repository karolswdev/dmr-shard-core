FROM ubuntu:16.04 AS base
WORKDIR /pol
COPY ./core-files /pol
FROM base as pol
RUN apt-get update
RUN apt-get -y install libmysqlclient20
RUN apt-get -y install curl
RUN apt-get -y install libgomp1
RUN apt-get -y install libssl1.0.0
RUN apt-get -y install libcurl3
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install make g++ libc-dev g++-multilib libgomp1
RUN apt-get install mysql-client libmysqlclient-dev -y
RUN apt-get install libssl-dev -y
RUN apt-get install libstdc++6 -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y
RUN apt-get -y install wget
RUN add-apt-repository 'deb https://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.7 main'
# RUN add-apt-repository 'deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.9 main'
RUN apt-get update
RUN add-apt-repository ppa:george-edison55/cmake-3.x -y
RUN apt-get update
#RUN apt-get install clang-3.7 clang-3.7-doc libclang-common-3.7-dev libclang-3.7-dev libclang1-3.7 libllvm-3.7-ocaml-dev libllvm3.7 lldb-3.7 llvm-3.7 llvm-3.7-dev llvm-3.7-doc llvm-3.7-examples llvm-3.7-runtime clang-tidy-3.7 clang-format-3.7 llvm-toolchain-3.7 -y
#RUN apt-get install libiomp5 -y
RUN apt-get install g++-5 cpp-5 gcc-5  gcc-5-locales g++-5-multilib gcc-5-doc libstdc++6-5-dbg gcc-5-multilib libcloog-isl4 libisl10 libgomp1-dbg libitm1-dbg libatomic1-dbg libasan0-dbg libtsan0-dbg libquadmath0-dbg binutils -y
RUN apt-get install cmake -y
RUN chmod u+x /pol/pol
RUN chmod u+x /pol/pol.sh
ENTRYPOINT /pol/pol.sh