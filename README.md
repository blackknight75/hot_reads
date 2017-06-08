# URL Lockbox

> This is an awesome app for keeping tack of all the links that you like. You can keep track of which ones you have and have not read. There is also a companion app that you can use in conjunction with this app to see the top 10 hottest links by view. When you mark a url as read it will add to the view count on the Hot Reads app.

#### Production Links

[Hot Reads(Production App)](https://boiling-woodland-88175.herokuapp.com/)

[Url Lockbox (Parent App)](https://thawing-wildwood-17227.herokuapp.com/)

## Setting up the App

#### Clone the repo

``` $ git clone https://github.com/blackknight75/m4-final-starter ```

#### Run

``` $ bundle intall ```

``` $ rake db:create db:migrate ```

#### If running locally

#### Launch Server

``` $ rails s ```

#### Launch Console

``` $ rails c ```

## Running Tests

#### Run

``` $ rspec ```

## Deploy to Heroku

* Make sure you precompile your JavaScript before you push to your repository and to Heroku

#### Remover Old Minified Files First

``` $ rake assets:clobber ```

#### Precopile JavaScript for Production

``` $ rake assets:precopile ```

#### Push to Your Repo

``` $ git add . ```

``` $ git commit -m "Your commit message" ```

``` $ git push origin branch-name ```
