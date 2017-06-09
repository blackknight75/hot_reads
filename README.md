# Hot Reads

> This is an awesome app for viewing the top 10 links from URL Lockbox and how many views they have. This communicates with URL Lockbox to display tags based on the links position on the top 10 list.

#### Production Links

[Hot Reads(Production App)](https://boiling-woodland-88175.herokuapp.com/)

[Url Lockbox (Parent App)](https://thawing-wildwood-17227.herokuapp.com/)

## Setting up the App

#### Clone the repo

``` $ git clone https://github.com/blackknight75/hot_reads ```

#### Run

``` $ bundle intall ```

``` $ rake db:create db:migrate ```

#### If running locally

* Make sure to switch the URL to localhost before running the server for developing locally.

``` function checkDatabase(){
  $.ajax({
    method: "GET",
    //url: "https://boiling-woodland-88175.herokuapp.com/api/v1/links"
    url: "/api/v1/links"
  }).then(function(links){
    var linkCount = 0
    if(links.length == linkCount){

    } else {
      linkCount = links.count
      location.reload();
    }
  })
}
```

#### Launch Server

``` $ rails s ```

#### Launch Console

``` $ rails c ```

## Running Tests

#### Run

``` $ rspec ```

## Deploy to Heroku

* Make sure to switch the URL to production before running the server for developing

``` function checkDatabase(){
  $.ajax({
    method: "GET",
    url: "https://boiling-woodland-88175.herokuapp.com/api/v1/links"
    // url: "/api/v1/links"
  }).then(function(links){
    var linkCount = 0
    if(links.length == linkCount){

    } else {
      linkCount = links.count
      location.reload();
    }
  })
}
```

* Make sure you precompile your JavaScript before you push to your repository and to Heroku

#### Remover Old Minified Files First

``` $ rake assets:clobber ```

#### Precopile JavaScript for Production

``` $ rake assets:precopile ```

#### Push to Your Repo

``` $ git add . ```

``` $ git commit -m "Your commit message" ```

``` $ git push origin branch-name ```
