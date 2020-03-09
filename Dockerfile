FROM jfloff/alpine-python:3.7

WORKDIR /usr/src/odm

# Update with Cryptography(from ansible-lint) dependencies
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev

# Install latest ansible-lint
RUN pip install --upgrade pip && pip install ansible-lint

ENTRYPOINT ["/usr/local/bin/ansible-lint"]
