FROM pritunl/archlinux:2016-03-26

ARG SCALA_VERSION=2.11.7-1
ARG SBT_VERSION=0.13.11-1

RUN pacman -Sc --noconfirm jdk8-openjdk
RUN pacman -U --noconfirm http://mirror.pritunl.com/archlinux/all/scala-$SCALA_VERSION
RUN pacman -U --noconfirm http://mirror.pritunl.com/archlinux/all/sbt-1:$SBT_VERSION

RUN sbt