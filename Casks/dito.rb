cask "dito" do
  version "0.1.0"
  sha256 "64792cdb4f014d088781df46b6ac1ecb77cd6ed26f64587497922805a5c23d40"

  url "https://github.com/Clouddios/homebrew-dito/releases/download/v#{version}/Dito-#{version}.zip"
  name "Dito"
  desc "Ditado por voz com transcrição local"
  homepage "https://github.com/Clouddios/homebrew-dito"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Dito.app"

  uninstall quit: "local.pessoal.dito"

  zap trash: [
    "~/Library/Application Support/Dito",
    "~/Library/Preferences/local.pessoal.dito.plist",
  ]

  caveats <<~EOS
    O Dito ainda não é notarizado pela Apple. Na primeira vez que abrir, o macOS
    vai bloquear o app. Para liberar:
      Ajustes do Sistema > Privacidade e Segurança > "Abrir Mesmo Assim"

    Depois, dê ao Dito as permissões de Microfone e de Acessibilidade.
  EOS
end
