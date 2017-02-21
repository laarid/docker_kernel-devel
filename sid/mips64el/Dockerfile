# GENERATED from Dockerfile.template. DO NOT EDIT.
FROM vicamo/debian-linux-kernel-cross:sid-mips64el

RUN echo "deb [allow-insecure=yes] http://dl.bintray.com/laarid/main stretch main" | \
		tee /etc/apt/sources.list.d/bintray.list; \
	(echo "Package: *"; echo "Pin: origin \"dl.bintray.com\""; echo "Pin-Priority: 1000") | \
		tee /etc/apt/preferences.d/bintray.pref; \
	apt-get update -qq

ENV LAARID_USER=laarid
ENV LAARID_HOME=/home/${LAARID_USER}

RUN useradd --comment 'LAARiD Development Account' \
		--home ${LAARID_HOME} --create-home \
		--shell /bin/bash \
		${LAARID_USER} \
	&& (echo "${LAARID_USER}:laarid" | chpasswd) \
	&& adduser ${LAARID_USER} sudo \
	&& (echo "${LAARID_USER} ALL=NOPASSWD: ALL" > /etc/sudoers.d/laarid) \
	&& chmod 0440 /etc/sudoers.d/laarid

VOLUME ["${LAARID_HOME}"]
WORKDIR ${LAARID_HOME}
USER ${LAARID_USER}
