## Setup Instructions

#### Installation requirements
* Install Ruby [here](https://www.ruby-lang.org/en/documentation/installation)

#### Clone Repository and Install Bundler

* Navigate to the directory where you would like to store this repository.
* Run `git clone` command in terminal/command line with this repositorys URL included.
* Run `gem install bundler` to install Bundler to manage all gems for this repository.
* Run `bundle` or `bundle install` in your command line to download all dependencies.

#### Running Program from the Command Line

* Navigate to the directory where you cloned this repository
* Run the application by entering `ruby app.rb` into your command line
* You will be promted to enter a file to parse, and should enter `sample-input.txt`
* To run the test suite from the command line enter `rspec`

## The Problem

We want you to create a command-line application that will evaluate whether a
list of proposed products are approved by a team of reviewers.

### Input/output

The input and output will be text. Your solution should parse the provided
sample-input.txt file via stdin (pipe or redirect) or by parsing a file passed
by name on the command line. Your solution should output the correct result via
stdout to the console.

The input contains the reviewers' feedback, one per line. See sample-input.txt
for details.

You can expect that the input will be well-formed. There is no need to add
special handling for malformed input files.

### The rules

Reviewers can 'approve' or 'reject' a product. If a product has zero 'reject'
votes, then its status is 'Approved'. If a product has even a single 'reject'
vote, then its status is 'Denied'. Products in the output should be listed in
alphabetical order.

### Guidelines

This should be implemented in a language with which you are familiar. We would
prefer that you use ruby, javascript or python if you are comfortable doing so.
If none of these are comfortable, please choose a language that is both
comfortable for you and suited to the task.

Your solution should be able to be run (and if applicable, built) from the
command line. Please include appropriate scripts and instructions for
running your application and your tests.

If you use other libraries installed by a common package manager
(rubygems/bundler, npm, pip), it is not necessary to commit the installed
packages.

We write automated tests and we would like you to do so as well.

We appreciate well factored, object-oriented or functional designs.

Please document any steps necessary to run your solution and your tests.

### Platform support

This will be run in a unix-ish environment (OS X and Ubuntu). If you choose to
use a compiled language, please keep this in mind. Please use platform-agnostic
constructs where possible (line-endings and file-path-separators are two
problematic areas).
