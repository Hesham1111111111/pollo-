class ContactUsModel {
  final String svg;
  final String title;
  final String contact;
  final String buttonTitle;
  final void Function() onButtonTapped;

  ContactUsModel({
    required this.svg,
    required this.title,
    required this.contact,
    required this.buttonTitle,
    required this.onButtonTapped,
  });
}
