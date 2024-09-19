class ApiPathConstants {
  static String guestUser = '/authentication/guest_session/new';
  static String reqToken = '/authentication/token/new';
  static String loginAuth = '/authentication/token/validate_with_login';
  static String createSession = '/authentication/session/new';
  static String nowPlaying = '/movie/now_playing';
  static String popular = '/movie/popular';
  static String topRated = '/movie/top_rated';
  static String ternding = '/trending/movie/week?language=en-US';
  static String imgUrlPrefix = 'http://image.tmdb.org/t/p/w300';
  static String backdropUrlPrefix = 'http://image.tmdb.org/t/p/w500';
  static String movieDetails(int movieId) => '/movie/$movieId';
  static String similarMovie(int movieId) => '${movieDetails(movieId)}/similar';
  static String addToFavorite(accountId) => '/account/$accountId/favorite';
  static String addToWatchlist(accountId) => 'account/$accountId/watchlist';
}
