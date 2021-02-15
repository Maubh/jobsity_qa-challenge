# QA Challenge

Test Automation project using Ruby,Cucumber,Capyara for UI Tests. 

#### Website: http://automationpractice.com/index.php

## Informations

<ul>
<li> Scenarios were written using BDD;</li>
<li> Automated scripts were implemented using Ruby/Capybara and the Page Objects pattern;</li>
<li> Automated scenarios have the tag @automatized;</li>

</ul>

# Installation Process

## Requirements and installation

1. Install the last version of ``` Ruby LTS ``` -> https://www.ruby-lang.org/en/downloads/

2. Download and install Google Chrome

3. Download and Install ``` Chromedriver LTS ``` -> https://chromedriver.storage.googleapis.com/index.html. For it, check the Google Chorme version installed.

4. Clone the repository with the command

 ```git clone https://github.com/Maubh/jobsity_qa-challenge.git```

5. Inside the project folder run the command below in terminal:

``` gem install bundler ```

6. Inside the project folder, run the command bellow for to install all of the required gems used in this project

``` bundle install ``` 


## Running tests

1. Run one of the commands below in Terminal:

```
cucumber -> Run all the scenarios

cucumber -t @automatized -> execute the only automatized tests

cucumber -t @contact_us -> execute the contact form scenarios

```
## Test results

<ul>
<li>The test suite uses the Report Builder gem to generate the test report</li>
<li> After run the scenarios, see the test report in the path features/results/report.html</li>
<ul>

### References


[Capybara](http://www.rubydoc.info/github/jnicklas/capybara)<br>
[Cucumber](https://cucumber.io/docs)<br>
[Ruby](http://ruby-doc.org/)<br>
[Report Builder](https://github.com/rajatthareja/ReportBuilder)<br>
[Automation Practice](http://automationpractice.com/index.php)<br>

