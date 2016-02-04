module.exports = (config) ->
  config.set
    basePath: __dirname
    frameworks: ['mocha']
    files: [
      'tests/**/*Spec.coffee'
    ]
    preprocessors:
      '**/*.coffee': ['webpack']
      '**/*.emblem': ['webpack']
    reporters: ['progress']
    coverageReporter:
      type: 'text'
    port: 9876
    colors: true
    autoWatch: false
    browsers: ['PhantomJS']
    singleRun: true
    webpack:
      module:
          loaders: [
              { test: /\.coffee$/, loader: "coffee-loader" },
              { test: /\.emblem$/, loader: "emblem-loader"}
          ],
      resolve:
        extensions: ["", ".emblem"]
    webpackMiddleware:
      noInfo: true
    plugins: [
      require 'karma-webpack'
      require 'karma-mocha'
      require 'karma-phantomjs-launcher'
    ]
