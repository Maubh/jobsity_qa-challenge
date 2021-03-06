# QA Challenge

![Ruby Badge](https://img.shields.io/badge/Ruby-CC342D?&logo=ruby&logoColor=white)
![License Badge](https://img.shields.io/badge/license-MIT-brightgreen)

Test Automation web project using Ruby, Cucumber, Capybara.

#### Website: http://automationpractice.com/index.php
#### Repo: https://github.com/Maubh/qa-challenge

## Informations

<ul>
<li> Scenarios were written using BDD;</li>
<li> Automated scripts were implemented using Ruby/Capybara and the Page Objects pattern;</li>
<li> Automated scenarios have the tag @automatized.</li>

</ul>

# Installation Process

## Requirements and installation

1. Install the last version of ``` Ruby LTS ``` -> https://www.ruby-lang.org/en/downloads/

2. Download and install Google Chrome

3. Download and Install ``` Chromedriver LTS ``` -> https://chromedriver.storage.googleapis.com/index.html. Install the same version on the Google Chrome browser used.

<ul>
<li>For Windows: after instalation, move the driver to C:\Windows </li>
<li>For MACOS: after instalation, move the driver to /usr/local/bin</li>
</ul>

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
<li> After run the scenarios, see the test report in the path /results/report.html</li>
</ul>

## References


[Capybara](http://www.rubydoc.info/github/jnicklas/capybara)<br>
[Cucumber](https://cucumber.io/docs)<br>
[Ruby](http://ruby-doc.org/)<br>
[Report Builder](https://github.com/rajatthareja/ReportBuilder)<br>
[Automation Practice](http://automationpractice.com/index.php)<br>
[Chrome Driver Instalation - Windows](http://jonathansoma.com/lede/foundations-2018/classes/selenium/selenium-windows-install/)<br>
[Chrome Driver Instalation - MAC](https://www.swtestacademy.com/install-chrome-driver-on-mac/)<br>

## Author

Made with ❤️ by Maurício Filho 👋🏽 Contact me!

[![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mauriciofilho) 
[![Gmail Badge](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:msvasconcelos.filho@gmail.com)

## License
[MIT](https://choosealicense.com/licenses/mit/)

