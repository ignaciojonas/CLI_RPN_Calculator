# CLI_RPN_Calculator

## How to setup the application
Get all the dependencies by running
```
bundle install
```

## How to run the tests
Once you have all the dependencies run
```
bundle exec rspec test/calculator.rb
```

## How to exectue the calculator
You can run the calculator by runinng
```
ruby rpn_calculator.rb
```

## Architecture
There are 2 main clases `Calculator` and `CLI`.
Inside `Calculator` there is all the logic to parse the expressions and execute the diffent operations.
I'm using `eval` to be able to absract the code, knowing that I have a good input validation, where I just accept numbers, `+`, `-`,`*` and `/`.
I also added 2 more validations:
* Cannot divide by zero
* You need at least 2 values in the stack to operate

In the `CLI` class lives all the code related to the user input from the console.
I created an instance of the Calculator to use it there, and then a `run` method to run a loop where the user can add their expresions to be calculated.

## Improvements
* Create a class for each type of error instead of using StandardError.
* Add some tests around CLI.

