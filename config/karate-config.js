function() {

  console.log(' url: ' + java.lang.System.getenv('INPUT_URL'))

  // Make GitHub Action input variables available as Karata script variables
  var config = {
    url: java.lang.System.getenv('INPUT_URL'),
  };

  // These can be set in test (https://github.com/intuit/karate#configure)
  // karate.configure("ssl", true)
  // karate.configure('connectTimeout', 10000);
  // karate.configure('readTimeout', 10000);

  return config;
}
