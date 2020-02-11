FROM centos:7
MAINTAINER liuzino<liuzhichn@gmail.com>
COPY script/ /build/script/
RUN /build/script/build.sh
EXPOSE 22
CMD /build/script/init.sh
