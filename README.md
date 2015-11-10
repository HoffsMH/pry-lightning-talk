# Basic neato's
* ``` whereami ``` to remember where you are in your code
* ```.<command> ``` executes terminal commands
  * ``` .ls ```
  * ``` .clear ```
  * ``` .git diff ```
  * ``` .git status ```
  * and yes we can get crazy ```.ruby <some-other-file> ```
* ``` binding.pry ``` is just another ruby command and as such we can put conditions on it
  ```ruby
  #...
  if element2 == 43
    binding.pry
  end
  #...
  ```

# Things to install and try
* ## Pry-toys
  * for when you need to test something real quick
    ```bash
     gem install pry-toys
     ```
     #### Try
     ```ruby
    Hash.toy(300)
    Array.toy(3, Time)
     ```

* ## Pry-byebug
 * for stepping through code
   ```bash
    gem install pry-byebug
    ```
    #### Try
    ```ruby
   step # Moves through code line by line
   continue or finish # completes rest of code
    ```
* ## Pry-rescue
 * "start a pry session when something goes wrong"
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
