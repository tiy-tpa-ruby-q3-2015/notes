## HTML Layout

### Description

A client has given you an example of "exactly" what he wants his new blog to look like. Your assigning, should you choose to accept it, is to create a blog layout from scratch, matching the layout of the given comp as closely as possible. You can replace the images with your own.

### Objectives

- Familiarize yourself with HTML tags.
- Familiarize yourself with CSS properties.
- Reinforce concepts of layout and `display` types.
- Familiarize yourself with Chrome's Developer Tools and keyboard shortcuts.

## Details

### Deliverables

- [ ] a git repo containing:
    - [ ] `index.html`
    - [ ] `styles` folder
        - [ ] `style.css`
    - [ ] `images` folder
        - [ ] with any images you used with your design
- [ ] a working, publicly visible website with a public URL (i.e. on Github pages).

## Explorer Mode

Create a blog layout in HTML and CSS similar to:

![](https://dl.dropboxusercontent.com/u/4024808/tiy/blog.png)

It should be as close as possible in structure; but have fun with the details! Consider using the blog post you wrote yesterday for the content.

## Adventure Mode

If you're feeling adventurous, make multiple pages. Create two blog posts and an index page that includes a summary of each with a link to the full posts. You should have working navigation between all the pages.

## Turning it in via Github Pages:

Checkout [Github Pages](https://pages.github.com).

Under "Getting Started", choose "Project Site". For the next question choose "Start from scratch". Follow the instructions to setup a `gh-pages` branch for your repository.

If you named your repo `blog_layout`, you'll be able to view the page at:

http://YOURGITHUBNAME.github.io/blog_layout

Please see me if you have any question about this.

## Notes

http://learnlayout.com/ outlines a number of things, however here are some general takeaways from the site (and lecture):

1. There is something called the Box Model. Every element has a Box with

    1. width and height (content),
    2. padding,
    3. border,
    4. and margin.

    Here is a visual description of the Box Model:

    ![](https://dl.dropboxusercontent.com/u/4024808/tiy/boxmodel.png)

- **EVERY** element has a default style, given to it by a default stylesheet. **EVERY** browser has a default stylesheet.
- There are a few main CSS attributes that influence layout:

    1. position
    - display
    - width and height
    - padding
    - border
    - margin

    Everything else in CSS simply colors, changes fonts, font sizes, background images, etc.

- All elements have a `position`, which is one of the four following values:

    1. `static`
    2. `relative`
    3. `absolute`
    4. `fixed`

    Any element with `static` or `relative` is considered having **LAYOUT**. This means they affect where other items are rendered. The other `position` values create a new layer. If an element is either of these, it is rendered above (on a new, 3d layer) and may cover up text or elements beneath it.

- All elements have a `display`, which is one of the following values:

    1. `inline`
    - `inline-block`
    - `block`
    - `table`
    - `inline-table`
    - `table-cell`
    - `table-caption`
    - `table-column`
    - `table-row`
    - `flex`
    - `inline-flex`

    The most common `display` types are `inline`, `inline-block`, and `block`. We will only be focusing on these (for now).

    - `inline` elements flow with text. They typically have only text in them that gives them width and height. Typical `inline` elements: `span`, `strong`, `em`, `i`, `b`. The default `display` type for `img` tags is also `inline`.
    - `block` elements create vertical sections. Anything before them in the HTML is rendered on top, anything after them in the HTML is rendered beneath.
    - `inline-block` has the same layout properties of `inline`, however it can have padding, border, and margin.

## Additional Resources

- http://learnlayout.com/
- http://meettheipsums.com/
- https://www.google.com/fonts
- Mozilla Developer Network: https://developer.mozilla.org/en-US/
- List of HTML tags: https://developer.mozilla.org/en-US/docs/Web/HTML/Element
- List of HTML attributes: https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes
- All the CSS properties! https://developer.mozilla.org/en-US/docs/Web/CSS/Reference
- You need GIFs, so get 'em here: http://giphy.com/
