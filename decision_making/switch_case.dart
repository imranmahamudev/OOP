void main() {
  String wifi_Connection = "Disconnected";
  switch (wifi_Connection) {
    case "Connected":
      print("WiFi is connected.");
      break;
    case "Disconnected":
      print("WiFi is disconnected.");
      break;
    default:
      print("WiFi is not connected.");
  }
}
