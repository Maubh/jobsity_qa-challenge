Feature: Contact Form
    As an user
    I want to send a message to the support team

    Background:
        Given the user is on the home page
        And click to contact us

    @sendMessageValidData @contact_us @automatized
    Scenario Outline: Send a message with a valid data
        And fill in the fields "<subject>","<email>","<order>","<txtMessage>"
        Then a success message is displayed in the page

        Examples:
            | subject          | email                         | order | txtMessage                                                                                         |
            | Customer service | msvasconcelos.filho@gmail.com | 22222 | Hi! Where is my package? It is taking too long to arrive!                                          |
            | Webmaster        | teste@teste.com.br            | 44444 | Hi! I thinks the performance of this website can be improved. Some pages take a long time to load! |

    @sendMessageInvalidEmail @contact_us @automatized
    Scenario: Send a message with an invalid email
        And fill in the fields "<subject>","<email>","<order>","<txtMessage>"
        Then an error message is displayed in the page informing that the email is invalid

        Examples:
            | subject          | email  | order | txtMessage                                                                                         |
            | Customer service | ttttt@ | 22222 | Hi! Where is my package? It is taking too long to arrive!                                          |
            | Webmaster        | 1111.  | 44444 | Hi! I thinks the performance of this website can be improved. Some pages take a long time to load! |

    @sendMessageAllEmptyFields @contact_us @automatized
    Scenario: Send a message with all the fields empty
        When send a message without filling the form fields
        Then an error message is displayed in the page

    @sendMessageEmptyMandatoryFields @contact_us @automatized
    Scenario Outline: Send a message with mandatory fields empty
        When fill in the fields "<subject>","<email>","<order>","<txtMessage>"
        Then an error message "<errorMessage>" is displayed on the page

        Examples:
            | subject          | email                         | order | txtMessage                                                                                         | errorMessage                                    |
            | -- Choose --     | msvasconcelos.filho@gmail.com | 3332  | Hi! Where is my package? It is taking too long to arrive!                                          | Please select a subject from the list provided. |
            | Webmaster        |                               | 4893  | Hi! I thinks the performance of this website can be improved. Some pages take a long time to load! | Invalid email address                           |
            | Customer service | msvasconcelos.filho@gmail.com | 9292  |                                                                                                    | The message cannot be blank.                    |