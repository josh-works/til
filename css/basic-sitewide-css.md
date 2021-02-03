# My current 'barebones' CSS setup:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>The Title</title>
      <link rel="stylesheet" href="https://fonts.xz.style/serve/inter.css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1.1.2/new.min.css">
      <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  
  <body>
    <div class="container">
      <div class="content">
      <h1>This line of text should be punchy and exciting!</h1>
      <p>My super secret message from the app server:</p>
      <%= @message %>
      
      
    </div>
    <footer>
      <ul>
        <li>Built with ❤ by <a href="https://twitter.com/josh_works">Josh Thompson</a></li>
        <li><a href="">Git Repo</a></li>
        <li>A learning Project from <a href="https://intermediateruby.com/">Intermediate Ruby</a></li>
        <li>A few today-i-learned entries for this project: <a href="https://github.com/josh-works/til/">today-i-learned</a></li>
      </ul>
    </footer>
  </div>  
  </body>
</html>

```

In `public/style.css`
```css
/* * {
  outline: 1px dashed red;
} */

.container {
  height: 95vh;
  display: flex;
  flex-direction: column;
}

.content {
  flex: 1 1 auto;
  overflow: auto;
  align-self: stretch;
}

footer {
  font-size:small;
  text-align: center;
  
}

footer ul {
  list-style-type: none;
}
```