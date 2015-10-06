- Minesweeper API homework
  - show mine_locations
- Testing homework
  - Review gotchas
  - fixtures vs factories (faker)

- Asset pipeline
  - HTTP requests for assets
    - # of parallel requests
    - CSS is parallel, Javascript is sequential
    - Time to setup a connection is (relatively) expensive
    - TLS makes this worse
    - HTTP/1.1 tries to address this (connections stay open)
    - HTTP/2.0 will address this (multiple requests, server push)
  - Asset management
    - Many assets to track
    - Want client to cache resources as long as possible
      - images
      - CSS
      - Javascript
      - Fonts
      - Set via [cache headers] (https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/http-caching?hl=en)
      - ETag
    - But how do we tell client to get a new copy
    - Slugs
      - http://myrailsapp.heroku.com/images/logo.png?234284923842938
      - Based on a timestamp of when the file was _created_
      - Varies from server to server, so need to keep the timestamp in sync
      - Not supported by all caching systems (proxies, etc)
      - Redeply the *same* logo yet the slug changes
      - Better slug is to use a _checksum_ of the file
    - This is how asset pipeline does it
      - /assets/logo_d41d8cd98f00b204e9800998ecf8427e.png
  - Pack and minify
    - Want to transfer the least number of assets to the client in the smallest number of bytes
    - Combine all the CSS into one file
    - Combine all the Javascript into one file
    - Manages assets folder and creating correct 'slug'    
  - Preprocess

  ```
      application.css.scss
                  ^   ^
                  |   |--- first runs scss preprocessor
                  |   
                  |------- output will be a css file
  ```

  ```
      application.css.scss.erb
                  ^   ^    ^
                  |   |    |
                  |   |    first runs the file through ERB template
                  |   |
                  |   |--- then runs scss preprocessor
                  |   
                  |------- output will be a css file
  ```

  - `require` - merges a specific file (css or js)
  - `require_tree` - merges in the entire folder of files
  - `require_self` - keeps the rest of the content of the file in the output (CSS)
  - Allows us to break down our CSS and JS into components
  - Recommend against require_self and avoid putting CSS/JS in the 'application' files
  - Recommend against require_tree because
    - Can't exclude anything (if you ever need to have other CSS/JS say for a separate part of the app)
    - Can't contrail (control) anything
      - Use wacky file names like `01_this_is_first.css.scss` and `02_this_comes_next.css.css`

- Sessions
  - Let's keep track of the last time the user came to our site
  - Where can we keep this?
  - Can't put it in the web page or every form.
  - Can't keep it on the server side as we can't distinguish one user from the next
  - Enter the "cookie"
  - How do they look in the browser
  - How can we use them in rails
  - Lets build a simple (though ineffective) user management system  

# Resources

- HTTP [caching](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/http-caching?hl=en)
- Rails [security guide](http://guides.rubyonrails.org/security.html)
- Rails [authentication by scratch](http://railscasts.com/episodes/250-authentication-from-scratch)
- Signin [template](http://getbootstrap.com/examples/signin/)
