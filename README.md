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
