function() {

  // keys and values in config will be available as Karate test script variables
  var config = {
    url: java.lang.System.getenv('INPUT_URL'),
  };

  // karate.configure("ssl", true)
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);

  return config;
}
