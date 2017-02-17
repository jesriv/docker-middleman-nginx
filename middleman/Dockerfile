FROM sccdjess/alpine-ruby-node

# Make app and ssh dirs
RUN mkdir -p /root/.ssh/

# Copy over stuff
ADD id_rsa /root/.ssh/id_rsa
ADD scripts/build-frontend.sh /usr/local/bin/build-frontend.sh
ADD scripts/install-frontend.sh /usr/local/bin/install-frontend.sh
ADD scripts/clean-frontend.sh /usr/local/bin/clean-frontend.sh

# Setup ssh directory permissions
RUN chmod 700 /root/.ssh/id_rsa \
	&& chown -R root:root /root/.ssh \
	&& touch /root/.ssh/known_hosts \
	&& echo "Host bitbucket.org\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config \
	&& ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts \
	&& chmod +x /usr/local/bin/build-frontend.sh \
    && chmod +x /usr/local/bin/install-frontend.sh \
    && chmod +x /usr/local/bin/clean-frontend.sh

CMD ["tail", "-f", "/dev/null"]