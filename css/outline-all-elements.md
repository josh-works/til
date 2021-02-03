# Outline all elements

Useful for debugging:

```css
* {
  outline: 1px dashed red;
}
```

condensed version of:

```css
* {
  outline-width: 1px;
  outline-style: dashed;
  outline-color: red;
}
```

In a console, any website, run:

```javascript
document.head.insertAdjacentHTML("beforeend", "<style>* { outline: 1px solid red; }</style>");
```
### Resources

- [Outline (CSS Tricks)](https://css-tricks.com/almanac/properties/o/outline/)