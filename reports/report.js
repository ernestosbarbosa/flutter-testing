var reporter = require('cucumber-html-reporter');

var options = {
        theme: 'bootstrap',
        jsonFile: 'report.json',
        output: 'report.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: true
    };

reporter.generate(options);