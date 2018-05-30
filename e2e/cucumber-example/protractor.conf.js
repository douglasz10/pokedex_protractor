'use strict'

exports.config = {

  directConnect: true,
  ignoreUncaughtExceptions: true,
  framework: 'custom',
  frameworkPath: require.resolve('protractor-cucumber-framework'),
  baseUrl: 'https://pokedex-angular-example.herokuapp.com/#!/list',
  capabilities: {
    'browserName': 'chrome'
  },
  specs: [
    'features/*.feature'

  ],
  cucumberOpts: {
    require: [
      'features/step_definitions/*.step.js',
      'features/support/env.js'
    ],
    format: ['json:results.json', 'pretty'],
    profile: false,
    'no-source': true,
  },

  beforeLaunch: function () {
    setTimeout(function () {
      browser.driver.executeScript(function () {
        return {
          width: window.screen.availWidth,
          height: window.screen.availHeight
        };
      }).then(function (result) {
        browser.driver.manage().window().setSize(result.width, result.height);
      });
    });

  },

  onPrepare: function () {
    browser.ignoreSynchronization = true;
  },

  afterLaunch: function () {
    var reporter = require('cucumber-html-reporter');

    var options = {
      theme: 'bootstrap',
      jsonFile: 'results.json',
      output: 'tests_result/cucumber_report.html',
      //screenshotsDirectory: 'screenshots/',
      storeScreenshots: true,
      reportSuiteAsScenarios: true,
      launchReport: true,
      metadata: {
        "App Version":"0.3.2",
        "Test Environment": "STAGING",
        "Browser": "Chrome  54.0.2840.98",
        "Platform": "Mac",
        "Parallel": "Scenarios",
        "Executed": "Remote"
    }
      
    };
    


    reporter.generate(options);
  },


}