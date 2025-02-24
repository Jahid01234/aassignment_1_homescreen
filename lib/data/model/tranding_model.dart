class TradingModel{
  final String image;
  final String text;

  TradingModel({
    required this.image,
    required this.text,
  });
  static List<TradingModel> tradingList = [
    TradingModel(
        image: "",
        text: "",
    )
  ];
}