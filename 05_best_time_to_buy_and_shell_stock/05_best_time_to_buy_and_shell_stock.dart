/*Você recebe uma lista prices, onde cada posição representa o preço de uma ação em um determinado dia.
Por exemplo:
prices = [7, 1, 5, 3, 6, 4]
Significa:
Dia 0 → R$ 7
Dia 1 → R$ 1
Dia 2 → R$ 5
Dia 3 → R$ 3
Dia 4 → R$ 6
Dia 5 → R$ 4
Você pode fazer uma única compra e uma única venda.
A regra mais importante:
Você precisa comprar antes de vender.

Seu objetivo é encontrar o maior lucro possível.
Nesse exemplo:
Compra no dia 1 → R$ 1
Venda no dia 4  → R$ 6

Lucro = 6 - 1 = 5
Então:
[7, 1, 5, 3, 6, 4] → 5
Se não existir nenhuma maneira de obter lucro, deve retornar 0.
Por exemplo:
[7, 6, 4, 3, 1] → 0
porque o preço só cai. Você não é obrigado a comprar.*/


class BestTimeToBuyAndSellStock {
  int maxProfit(List<int> prices) {
    late int menorPreco;
    late int maiorLucro;
    
    for(var i = 0; i < prices.length; i++){
      if(i == 0){
        menorPreco = prices[i];
        maiorLucro = 0;
      }
      if(prices[i] < menorPreco){
        menorPreco = prices[i];
      }
      final lucroAtual = prices[i] - menorPreco;
      if(lucroAtual > maiorLucro){
        maiorLucro = prices[i] - menorPreco;
      }
    }
    return maiorLucro;
  }
}