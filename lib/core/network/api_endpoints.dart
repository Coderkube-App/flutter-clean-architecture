/// A central repository for all API endpoint strings used in the application.
class ApiEndpoints {
  // TODO: Use environment-specific base URLs (e.g., dev, staging, prod).
  static const String baseUrl = 'https://api.example.com';
  
  /// Endpoint for user login.
  static const String login = '/auth/login';
  
  /// Endpoint for user registration.
  static const String register = '/auth/register';
  
  /// Endpoint to fetch the current user's profile.
  static const String getUserProfile = '/user/profile';
  
  /// Endpoint to update the current user's profile.
  static const String updateProfile = '/user/update';
  
  /// Returns the endpoint for fetching a paginated list of users.
  /// 
  /// [page] specifies the page number to retrieve.
  static String getUsers(int page) => '/users?page=$page';
}
