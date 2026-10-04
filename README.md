# Minhas Finanças

Aplicativo de planejamento financeiro pessoal desenvolvido como projeto de aprendizado de Flutter. A proposta é reunir contas, lançamentos, cartões de crédito e acertos financeiros com outras pessoas em uma experiência offline.

> **Estado atual:** protótipo inicial. A tela mostra duas contas de exemplo e permite adicionar uma conta com nome fixo e saldo zero. Os dados ficam apenas na memória e são perdidos ao reiniciar o aplicativo. As demais funcionalidades descritas abaixo ainda não foram implementadas.

## Objetivo do produto

- Organizar contas bancárias e carteiras, receitas, despesas, categorias e transferências.
- Acompanhar compras parceladas, faturas de cartões e pagamentos das faturas.
- Mostrar o saldo atual e o fluxo de caixa previsto para o mês.
- Cadastrar **personas** para controlar valores a receber ou a pagar a familiares, amigos e outras pessoas. Por exemplo, uma compra de TV em dez parcelas pode gerar, para cada mês, a contribuição combinada com outra pessoa e seu respectivo vencimento.
- Funcionar offline, com lembretes locais, bloqueio opcional e backup por arquivo em etapas futuras.

O desenvolvimento começa no Android. A estrutura Flutter também inclui iOS, que será validado quando houver acesso a um Mac. Compartilhamento e sincronização de dados são possibilidades posteriores.

## Tecnologias

- Flutter e Dart para a interface e as regras do aplicativo.
- SQLite está previsto para a persistência local; ainda não foi integrado.

## Executar no Android

Pré-requisitos: Flutter SDK, Android SDK e um emulador ou dispositivo Android configurado. Confira o ambiente e os dispositivos disponíveis:

```powershell
flutter doctor
flutter devices
```

Na raiz do projeto, instale as dependências e execute no dispositivo escolhido:

```powershell
flutter pub get
flutter run -d <id-do-dispositivo>
```

Durante a execução, pressione `r` no terminal para hot reload ou `R` para hot restart.

## Aprendizado e próximos passos

O projeto é construído em etapas: o autor implementa cada exercício, enquanto o Codex orienta e revisa. O plano de funcionalidades e a trilha de aprendizado estão em [PLANO_APRENDIZADO.md](PLANO_APRENDIZADO.md).

A próxima etapa é substituir o botão que adiciona uma conta de nome fixo por um diálogo para informar o nome; depois, a lista passará a usar persistência local.

## Licença

Copyright (c) 2026 Chrystian Amaral. Todos os direitos reservados. Consulte [LICENSE](LICENSE).
