# Elixir 1.3.2.: https://hub.docker.com/_/elixir/
FROM elixir:1.4.2


RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y -q nodejs
RUN npm install -g elm
RUN npm install -g elm-test


COPY ./compose/phoenix/entrypoint.sh /entrypoint.sh

RUN sed -i 's/\r//' /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR /app


ENTRYPOINT ["/entrypoint.sh"]



