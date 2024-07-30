class InvoiceReceiptModel {
  final String performaNo;
  final String invoice;
  final String date;
  final String fileImageUrl;

  InvoiceReceiptModel(
      {required this.performaNo,
      required this.invoice,
      required this.date,
      required this.fileImageUrl});
}
