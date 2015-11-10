# Basic Pry stuff
## Basic neato's
Some random things I've found useful that can be used with pry out of the box.
* ``` whereami ``` to remember where you are in your code
* ```.<command> ``` executes terminal commands
  * ``` .ls ```
  * ``` .clear ```
  * ``` .git diff ```
  * ``` .git status ```
  * and yes we can get crazy ```.ruby <some-other-file> ```


* ``` binding.pry ``` is just ruby and as such we can put conditions on it for when we know about when something is going wrong but don't want to type exit 231 times
  ```ruby
  #...
  if element2 == 43
    binding.pry
  end
  #...
  ```
* We can also get pry to be the default debugger in rails by including pry-rails in your gemfile
  ```ruby
  #gemfile
  group :development, :test do
    gem 'pry-rails'
  end
  ```
  type ```rails c ``` and you're in pry and not irb!

## Things to install and try
* ## Pry-toys
  * For when you need to test something for yourself real quick. Really usefull for understanding enumerables.
    ```bash
     gem install pry-toys
     ```
     #### Try
     ```ruby
    Hash.toy(300) # creates a toy has
    Array.toy(3, Time) # creates a toy array of Time objects
     ```

* ## Pry-byebug
 * for stepping through code.
 Serves as a fine comb to step through and understand code one line at a time.
* was originally a fork of [pry-debugger](https://github.com/nixme/pry-debugger) which [doesn't work past Ruby version 2.x](http://stackoverflow.com/questions/24395453/gem-install-debugger-error)
   ```bash
    gem install pry-byebug
    ```
    #### Try
    ```ruby
   step # Moves through code line by line
   continue # completes rest of code
    ```
* ## Pry-rescue
  * from the author of this gem

    "start a pry session when something goes wrong"

    this is actually a two parter

   ```bash
    gem install pry-rescue
    gem install pry-stack_explorer
    ```
    both must be installed to work properly
    #### Try in shell
    ```bash
    rescue <problematic ruby file>
    ```
    #### and yes it can be used in rails
    ```bash
    rescue rails s
    ```
