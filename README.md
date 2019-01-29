Array Challenge Implementation in Ruby

## Cloning repository

Do git clone https://github.com/rashmiarora/ECS-tech-test.git

##Introduction to the Test Layout

features/test.feature: Cucumber feature which has the required scenario and the test case

features/step_definitions/test.rb : This file has the actual code to implement the test scenarios in test.feature file

features/support/env.rb : configures the driver and the hostname to use

#Prerequisites

Install Ruby

Once Ruby is installed then we need to install few gems
gem install cucumber
gem install capybara
gem install selenium-webdriver
gem install rspec
gem install rails

gem install bundler

Once you have install the gems please run

bundle install

## Test execution

To run the tests execute command:

	cucumber features/test.feature

To run the tests and produce an HTML report, execute:

	cucumber -f pretty -f html -o test-report.html features/test.feature

This will create an html test report. Right click on it and you can open the report in the browser