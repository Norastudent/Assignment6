FROM fedora
RUN dnf -yqq upgrade
RUN dnf -yqq install tuxpaint
RUN dnf -yqq install vim
RUN dnf -yqq install httpd
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
