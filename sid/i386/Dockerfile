# GENERATED from Dockerfile.template. DO NOT EDIT.
FROM vicamo/buildpack-deps:sid-i386

RUN echo "$(cat /etc/apt/sources.list | sed 's,^deb ,deb-src ,')" >> /etc/apt/sources.list \
	&& apt-get update -qq \
	&& apt-get upgrade -y \
	&& apt-get install --no-install-recommends -y \
		build-essential \
		fakeroot \
	&& apt-get build-dep -y linux
