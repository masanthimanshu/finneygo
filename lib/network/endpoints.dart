enum ApiEndpoints {
  baseUrl,
  sendOtp,
  verifyOtp,
  totalAmount,
  verifyToken,
  refreshToken,
  addTransaction,
  getTransaction,
  deleteTransaction,
}

String apiEndpoint(ApiEndpoints endpoint) {
  switch (endpoint) {
    case ApiEndpoints.baseUrl:
      return "https://backend.scoobies.ai/finance/";

    case ApiEndpoints.sendOtp:
      return "account/auth/phone";

    case ApiEndpoints.verifyOtp:
      return "account/auth/verify-phone";

    case ApiEndpoints.totalAmount:
      return "secure/chat/total-amount";

    case ApiEndpoints.verifyToken:
      return "secure/verify";

    case ApiEndpoints.refreshToken:
      return "jwt/refresh";

    case ApiEndpoints.addTransaction:
      return "secure/chat/add-chat";

    case ApiEndpoints.getTransaction:
      return "secure/chat/get-chat";

    case ApiEndpoints.deleteTransaction:
      return "secure/chat/delete-chat?chatId=";
  }
}
