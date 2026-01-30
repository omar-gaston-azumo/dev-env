FROM ubuntu:20.04

ARG WWWGROUP
ARG NODE_VERSION=16
ARG POSTGRES_VERSION=13
ARG COMPOSER_VERSION=2.5.5
WORKDIR /var/www/html/files

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC
ENV SUPERVISOR_PHP_COMMAND=""
# ENV SUPERVISOR_PHP_COMMAND="/usr/local/bin/symfony local:server:start --port=8000 --dir=/var/www/html/files"
ENV SUPERVISOR_PHP_USER="devuser"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Fix GPG key issues
RUN apt-get update --allow-releaseinfo-change \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    gnupg \
    && apt-key adv --refresh-keys \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && mkdir -p /etc/apt/keyrings \
    && apt-get install -y gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev python2 dnsutils librsvg2-bin fswatch ffmpeg nano \
    && curl -sS 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x14aa40ec0831756756d7f66c4f4ea0aae5267a6c' | gpg --dearmor | tee /usr/share/keyrings/ppa_ondrej_php.gpg > /dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/ppa_ondrej_php.gpg] https://ppa.launchpadcontent.net/ondrej/php/ubuntu focal main" > /etc/apt/sources.list.d/ppa_ondrej_php.list \
    && apt-get update \
    && apt-get install -y php7.4-cli php7.4-dev \
    php7.4-pgsql php7.4-sqlite3 php7.4-gd php7.4-imagick \
    php7.4-curl php7.4-memcached \
    php7.4-imap php7.4-mysql php7.4-mbstring \
    php7.4-xml php7.4-zip php7.4-bcmath php7.4-soap \
    php7.4-intl php7.4-readline php7.4-pcov \
    php7.4-msgpack php7.4-igbinary php7.4-ldap \
    php7.4-redis php7.4-xdebug \
    && curl -sLS https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar -o composer.phar \
    && mv composer.phar /usr/bin/composer.phar \
    && chmod +x /usr/bin/composer.phar \
    && ln -s /usr/bin/composer.phar /usr/bin/composer \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main" > /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y memcached \
    && apt-get install -y nodejs \
    && npm install -g npm@8 \
    && npm install -g bun \
    && npm install -g -s bower \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    # && curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /usr/share/keyrings/pgdg.gpg >/dev/null \
    # && echo "deb [signed-by=/usr/share/keyrings/pgdg.gpg] http://apt.postgresql.org/pub/repos/apt focal-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get update \
    && apt-get install -y yarn \
    && apt-get install -y mysql-client \
    # && apt-get install -y postgresql-client-$POSTGRES_VERSION \
    && apt-get install -y libnss3-tools \
    # && apt-get install -y install wkhtmltopdf \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN update-alternatives --set php /usr/bin/php7.4

RUN setcap "cap_net_bind_service=+ep" /usr/bin/php7.4

RUN groupadd --force -g $WWWGROUP devuser
RUN useradd -ms /bin/bash --no-user-group -g $WWWGROUP -u 1337 devuser

RUN curl -sS 'https://get.symfony.com/cli/installer' | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony \
    && chown root: /usr/local/bin/symfony \
    && chmod 777 /usr/local/share/ca-certificates/ \
    && chmod 777 /etc/ssl/certs/


RUN gosu $SUPERVISOR_PHP_USER symfony server:ca:install

# Specific to ValueBuilder (Profile)
COPY ./profiles/valuebuilder/php/7.4/start-container /usr/local/bin/start-container
COPY ./profiles/valuebuilder/php/7.4/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./profiles/valuebuilder/php/7.4/php.ini /etc/php/7.4/cli/conf.d/99-custom-php.ini

RUN chmod +x /usr/local/bin/start-container

# EXPOSE 8080/tcp
ENTRYPOINT ["start-container","/usr/local/bin/symfony", "local:server:start","--listen-ip=0.0.0.0", "--port=8000", "--dir=/var/www/html/files"]
