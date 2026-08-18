import 'package:test/test.dart';

import '../05_best_time_to_buy_and_shell_stock/05_best_time_to_buy_and_shell_stock.dart';

void main(){
  late BestTimeToBuyAndSellStock best;

  group("Melhor dia para comprar e vender:", (){

    setUp((){
      best = BestTimeToBuyAndSellStock();
    });

    test("Caso normal, deve retornar o valor de lucro 5", (){
      final listPrices =  [7, 1, 5, 3, 6, 4];

      final result = best.maxProfit(listPrices);

      expect(result, 5);
    });

    test("Preço só diminuem, deve retornar o valor 0", (){
      final listPrices = [7, 6, 4, 3, 1];

      final result = best.maxProfit(listPrices);

      expect(result, 0);
    
    });

    test("Preço só aumentam, deve retornar o valor 4", (){
      final listPrices = [1, 2, 3, 4, 5];

      final result = best.maxProfit(listPrices);

      expect(result, 4);
    });

    test("Apenas um preço, deve retonar o valor 0 imediatamente", (){
      final listPrices = [5];

      final result = best.maxProfit(listPrices);

      expect(result, 0);
    });

    test("Menor preço aparece depois de uma oportunidade de lucro, deve retornar o valor 3", (){
      final listPrices = [3, 5, 1, 4];

      final result = best.maxProfit(listPrices);

      expect(result, 3);
    });

    test("Compra e venda em dias consecutivos, deve retornar o valor 2", (){
      final listPrices = [2, 4, 1];

      final result = best.maxProfit(listPrices);

      expect(result, 2);
    });
  });
}