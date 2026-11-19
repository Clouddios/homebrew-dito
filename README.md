# Dito no Homebrew

Dito é um app de ditado por voz para macOS. A transcrição roda no próprio Mac, sem enviar áudio para a internet.

## Instalar

```sh
brew tap clouddios/dito
brew trust clouddios/dito
brew install --cask dito
```

O `brew trust` é exigido pelo Homebrew para taps que não são oficiais.

Requer macOS 27 ou mais novo, em Mac com Apple Silicon.

O app ainda não é notarizado pela Apple, então o macOS bloqueia a primeira abertura. Para liberar, abra **Ajustes do Sistema > Privacidade e Segurança** e clique em **Abrir Mesmo Assim**. Depois, dê ao Dito as permissões de Microfone e de Acessibilidade.

## Atualizar

```sh
brew upgrade --cask dito
```

## Remover

```sh
brew uninstall --cask dito          # remove o app
brew uninstall --cask --zap dito    # remove também gravações, dicionário e ajustes
```
