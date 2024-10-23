# Flutter Managing States
https://pub.dev/ 
## Tópicos do repo & estudo
- Gerenciamento de estados
- SetState
- Provider: (https://pub.dev/packages/provider)
- Consumer: É um widget que permite que uma parte da sua árvore de widgets reconstrua quando um valor fornecido pelo Provider é alterado. Ele funciona como um "ouvinte" para mudanças em um Provider específico e atualiza apenas os widgets que dependem daquele valor.
  - Como funciona:
    - Especificação do Provider: Você especifica o tipo de Provider que o Consumer deve ouvir usando o parâmetro de tipo T. Por exemplo, Consumer<MeuModel>.
    - Função builder: O Consumer recebe uma função builder que é chamada sempre que o valor do Provider especificado é alterado.
    - Reconstrução: A função builder recebe o contexto, o valor atual do Provider e um filho opcional. Você usa esses parâmetros para construir a parte da sua interface que depende do valor do Provider. Quando o valor do Provider muda, a função builder é chamada novamente, reconstruindo apenas a parte da interface que depende daquele valor.
    - Exemplo de Código:
    - ```Consumer<MeuModel>(
  builder: (context, meuModel, child) {
  return Text('Valor: ${meuModel.valor}');
  },
  )```
- Redux
- Models
- Inherit Widget
- BloC

