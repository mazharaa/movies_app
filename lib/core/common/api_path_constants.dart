class ApiPathConstants {
  static String guestUser = '/authentication/guest_session/new';
  static String reqToken = '/authentication/token/new';
  static String loginAuth = '/authentication/token/validate_with_login';
  static String nowPlaying = '/movie/now_playing';
  static String popular = '/movie/popular';
  static String imgUrlPrefix = 'http://image.tmdb.org/t/p/w185';
  static String movieDetails(int movieId) => '/movie/$movieId';
  static String similarMovie(int movieId) => '${movieDetails(movieId)}/similar';
  static String addToFavorite(accountId) => '/account/$accountId/favorite';
  static String addToWatchlist(accountId) => 'account/$accountId/watchlist';
}
