function() {

  console.log(java.lang.System.getenv());

  // GA passes inputs to us with this Env prefix
  const githubActionInputPrefix = "INPUT_VARS_";

  // Make all GitHub Action vars.* input variables available as Karata script variables
  var config = {};
  var env = java.lang.System.getenv();
  for (var key in env) {
    // check if the property/key is defined in the object itself, not in parent
    if (env.hasOwnProperty(key) && key.startsWith(githubActionInputPrefix)) {
        var karateVariableName = key.substr(githubActionInputPrefix.length).toLowerCase()
        config[karateVariableName] = env[key]
    }
  }

  // This can be set in test (https://github.com/intuit/karate#configure)
  // karate.configure("ssl", true)
  // karate.configure('connectTimeout', 10000);
  // karate.configure('readTimeout', 10000);

  return config;
}
