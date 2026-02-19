class AppLanguageModel {
  final String langCode;
  final String langName;

  AppLanguageModel({required this.langCode, required this.langName});

  @override
  String toString() => langName;
}
