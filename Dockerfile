FROM ghcr.io/streetsidesoftware/cspell:latest

COPY .pre-commit-config.yaml .pre-commit-config.yaml
COPY cSpell.json cSpell.json

RUN npm install -g @cspell/dict-fr-fr

ENTRYPOINT [ "cspell-cli", "--locale=fr" ]