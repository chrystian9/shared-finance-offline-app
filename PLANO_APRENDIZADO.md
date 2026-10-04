# Plano de aprendizado e construção do app financeiro

## Objetivo e forma de trabalho

Construir um aplicativo financeiro pessoal em Flutter e Dart, com dados locais em SQLite, interface em português do Brasil e valores em reais. O usuário escreverá o código. O Codex atuará como orientador: explicará conceitos, proporá tarefas pequenas, revisará alterações e ajudará a depurar. No início, as tarefas serão guiadas; depois, passarão a exercícios com critérios de aceitação e revisão. O Codex só editará código do aplicativo mediante pedido explícito.

A primeira entrega executável será Android e funcionará totalmente offline. A estrutura deverá permitir uma futura versão iOS com lógica e interface compartilhadas. A validação iOS ficará para quando houver acesso a um Mac.

## Funcionalidades previstas

- Contas bancárias e carteiras com saldo inicial; categorias, receitas, despesas e transferências entre contas.
- Lançamentos recorrentes mensais, com ocorrências editáveis individualmente.
- Cartões de crédito com dia de fechamento, vencimento e conta preferencial para pagamento; compras parceladas, faturas e pagamentos totais ou parciais.
- Personas virtuais para representar outras pessoas, sem acesso ao aplicativo nesta versão. Acordos vinculados a despesas podem gerar valores a receber ou a pagar por parcela, definidos como percentual ou valor, com dia mensal padrão e vencimentos ajustáveis.
- Acertos parciais ou integrais com personas, vinculados a uma conta. O saldo pendente permanece visível até a quitação.
- Painel mensal com saldo atual das contas e fluxo de caixa previsto até o fim do mês, considerando lançamentos e faturas pendentes. Parcelas do cartão pertencem ao mês de sua fatura; o pagamento da fatura não duplica a despesa.
- Lembretes locais configuráveis, bloqueio opcional por PIN ou biometria e exportação/importação de backup local por arquivo.

Compartilhamento e sincronização de dados entre pessoas são possibilidades futuras, preservando o princípio offline first.

## Trilha de aprendizado

1. **Fundamentos e ambiente:** verificar Flutter e Android; executar um app no dispositivo ou emulador; aprender o Dart necessário (tipos, nulidade, classes, coleções, `Future` e `async/await`) e os fundamentos de widgets, layout, formulários, navegação e estado.
2. **Primeiro fluxo completo:** cadastrar contas e carteiras com saldo inicial; adicionar categorias, receitas e despesas; introduzir separação entre interface, regras e persistência SQLite conforme cada camada se tornar necessária.
3. **Planejamento financeiro:** implementar transferências, recorrências, cartões, parcelas, faturas e pagamentos; calcular saldo atual e previsto sem contagem dupla.
4. **Personas:** cadastrar pessoas, definir contribuições por valor ou percentual, gerar obrigações por parcela e registrar acertos parciais. Usar como cenário principal a TV dividida em dez parcelas, com contribuição da noiva vencendo todo dia 7.
5. **Uso diário:** adicionar lembretes, bloqueio, backup local e testes dos cálculos; revisar a experiência completamente offline.

## Ciclo de cada etapa

1. O Codex explica apenas os conceitos necessários para a tarefa seguinte, define uma tarefa pequena e seus critérios de aceitação.
2. O usuário implementa e executa o código. O Codex revisa o resultado, explica erros e sugere correções sem tomar a implementação para si.
3. Após validar o fluxo e os cálculos relevantes, registrar o que foi aprendido e escolher a próxima tarefa.

Começar pela instalação e verificação do ambiente Android/Flutter. A primeira tarefa de código será criar um aplicativo Flutter mínimo e executá-lo no Android.
