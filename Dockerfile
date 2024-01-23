FROM ubuntu:latest

# make it fresh
# add en UTF-8 as a locale
ENV OTHER_PROJECTS \
mulle-sde/mulle-sde-developer; \
mulle-c/mulle-c-developer; \
mulle-core/mulle-core-developer;

ENV SDE_PROJECTS    mulle-test

# Uncomment for prerelease
# ENV MULLE_SDE_DEFAULT_VERSION prerelease
# ENV MULLE_HOSTNAME ci-prerelease

#   && apt-get -y install locales \
#   && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen \

# bsdmainutils for column
# in theory we could use the tools from mulle-clang instead of build-essential
# but they are untested...

RUN DEBIAN_FRONTEND=noninteractive \
      apt-get update \
   && apt-get -y install cmake curl git ninja-build build-essential uuid-runtime bsdmainutils wget \
\
   && wget "https://raw.githubusercontent.com/mulle-sde/mulle-sde/${MULLE_SDE_DEFAULT_VERSION:-release}/bin/installer-all" \
   && chmod 755 installer-all \
   && ./installer-all /usr no \

