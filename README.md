# thedragonofthe.rest

# Decription
### A Free REST API that returns Uncle Iroh quotes from Avatar: The Last Airbender.


# Usage

```
GET http://api.thedragonofthe.rest/quote
```

Not longer deployed, but feel free to use as reference.

# Development

Single end point elixir API built with Plug and Cowboy.

<!-- To run locally:

Make sure you have elixir installed -->
<!-- 
```
  mix run --no-halt
``` -->

<!-- # Licenses: -->

<!-- **TODO: Add description** -->

# Sources

A lot of code used in this project is sourced from this [blog](https://blog.lelonek.me/minimal-elixir-http2-server-64188d0c1f3a). However, if you are looking to build something similar you will have to supplement from other sources because this blog post misses some necessary config settings to deploy to Heroku as well as getting some aspects of the app running locally. 

[Plug Docs](https://hexdocs.pm/plug/readme.html)

[Elixir Guide](https://elixir-lang.org/getting-started/introduction.html)

# Contribute

If there's any quotes that you would like to see added, feel free to make a pull request with the added quotes in `lib/quotes.txt`.

I'm new to Elixir so I am sure there are best practices I am definitely not following. If you see anything that needs improvement please reach out and let me know! Or make a PR detailing the reasons for the changes so I can learn!
