function() {

  // all keys and values will be available as script variables
  var config = {
    baseurl: java.lang.System.getenv('INPUT_BASEURL'),
  };

  // karate.configure("ssl", true)
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);

  return config;
}
