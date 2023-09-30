class ApiUrls {
  //flutter packages pub run build_runner build --delete-conflicting-outputs
  static const String BASE_URL = 'http://haraj-online.com/api';
  //Auth url
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String VERIFY = '/verify/';
  static const String LOGOUT = '/logout';
  static const String PROFILE = '/profile';
  //Store url
  static const String GET_STORE = '/stores';
  static const String UPDATE_STORE = '/update-store';
  static const String STORE_POST = '/stores/1/posts';
  static const String DELETE_IMAGE_FROM_GALLERY = '/';
  static const String UPDATE_STORE_ADDRESS = '/update-address';
  //post url
  static const String GET_POSTS = '/posts';
  static const String SHOW_POSTS = '/posts/';
  static const String GET_FAVORITES = '/posts/favorites';
  static const String FAVORITES = '/post/3/toggle-favorite';
  static const String UPDATE_POSTS = '/posts/11';
  static const String STORE = '/posts';
  //general url
  static const String FUELS = '/fuels';
  static const String GEARS = '/gears';
  static const String ENGINES= '/engines';
  static const String SEATS= '/seats';
  static const String TECHINICAL_ADVANTAGE= '/technical-advantages';
  static const String DOORS= '/doors';
  static const String CYLINDERS= '/cylinders';
  static const String GENERAL_STATUS= '/general-statuses';
  static const String MECHINICAL_STATUS= '/mechanical-statuses';
}