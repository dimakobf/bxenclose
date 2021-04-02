FROM dsilakov/rosa-hse

RUN dnf install -y dnf-utils
RUN yum-config-manager --add-repo \http://abf-downloads.rosalinux.ru/dimakob_personal/repository/rosa2019.1/x86_64/main/release/
RUN dnf install -y texlive-bxenclose

ENTRYPOINT ["rpm -q texlive-bxenclose"]