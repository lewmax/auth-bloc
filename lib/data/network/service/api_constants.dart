abstract class ApiConstants {
  static const baseUrl = '';

  ///auth
  static const check = '/auth/users/codes/check';
  static const signUp = '/auth/users/signup';
  static const setPassword = '/auth/users/set-password';
  static const logout = '/auth/users/logout';
  static const login = '/auth/users/login';
  static const forgotPassword = '/auth/users/forgot-password';
  static const resendCode = '/auth/users/codes/resend-code';
  static String refresh(String token) => '/auth/users/refresh?token=$token';

  ///users
  static const me = '/users/me';
  static const image = '/users/me/image';
  static const file = '/users/me/file';
  static const balance = '/users/balance';
  static String favoriteProduct(String id) => '/users/me/favorite-products/$id';
}
