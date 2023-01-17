import 'networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NGN',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '';
const url = 'http://api-ncsa.coinapi.net/v1/exchangerate/';

class Coin{

  Future getCoinData(String cryptoCoin, String fiat){
    String request = '${url+cryptoCoin}/$fiat?apikey=$apiKey';
    var coinData = NetworkHelper(request).getData();
    return coinData;
  }
}