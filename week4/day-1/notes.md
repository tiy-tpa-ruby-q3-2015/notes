- How does the internet work:
  - https://www.youtube.com/watch?v=7_LPdttKXPc
- Full details of what happens from the time you type in "google.com" until the google homepage is displayed (under constant improvement)
  - https://github.com/alex/what-happens-when
- Neat description of how DNS (turns google.com into 64.233.176.100 that the internet understands) from the domain and DNS provider: dnsimple.com
  - https://howdns.works/
- HTTP Status codes
  - http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
  - Funny:
    - http://httpstatusdogs.com
    - http://http.cat
- telnet to server
  ```
  telnet gstark.com 80
  GET / HTTP/1.1
  Host: gstark.com

  ```

  This will show my super cool styled homepage!

- Good introduction to `WEBrick`
  - https://www.igvita.com/2007/02/13/building-dynamic-webrick-servers-in-ruby/
- `web.rb` the simple people tracking app we built in class today
