# SimpleBlog

- **NOTE** that the DEV port has been updated (as shown below) to 40**41**.

## Overview

This is a simple Elixir/Phoenix app for rendering blog content (written as Markdown files) using the Nimble Publisher Mix package.

This was built using this (broken) tutorial: https://danschultzer.com/posts/welcome-to-my-blog

Blog articles are in the `priv/posts` folder; there were two examples there at the time of the initial commit. 

FYI, what is broken in the tutorial is that the `.eex` files in `simple_web/live/blog_live` need to have `.heex` extensions, not `.eex`.

## Generic Intro Content

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4041`](http://localhost:4041) from your browser.

## TO DOs

If you launch this (generic, out-of-the-box) Phoenix app, you will immediately notice the the "container" is generic. We need to do <something> to make this content consistent with the header/footer styling of the main (host) site--starting with Elixirized.

Note that if we keep this project site-independent, we can use this blog functionality on multiple sites, not just Elixirized. this implies a "TO DO" like:

**[ ] TO DO**: Inherit the site-wide styling of the parent site hosting this blog functionality.

### Article Styling

The second thing you will notice is that the blog posts (articles) lack styling. Even the headers (<h> tags resulting from "#" makdow) lack styling.

**[ ] TO DO**: Add CSS styling to headers, and add spacing between paragraphs so we don't have to manually add breaks (`<br/>`).
