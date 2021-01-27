# How To Make Footnotes

I find a lot of value in footnotes. I don't want to over-use them, but here's how to make them:

## Regular footnote:

In your text, add the footnote anchor, like so.[^example-fn]

[^example-fn]: Here's the footnote! Dun dun dun.

Anywhere below it, you can add the footnote. Doesn't have to be at the bottom of the document. I _usually_ place the footnote in-line with the text, but not always.

## Fancy footnotes:

you can do multi-line footnotes.[^complex-fn]

[^complex-fn]: Indent all subsequent lines _twice_

    like so. Now you have a multi-line footnote.
    
    Want some code in it?
    
    ```ruby
    def cool_method(arg)
      does_stuff(arg)
    end
    ```
    And you can even add images:
    
    ![markdown image](/images/markdown-footnotes.jpg)
    
    > and quotes!
    
### Resources

- [Markdown Guide](https://www.markdownguide.org/extended-syntax#fnref:bignote)
- [Markdown with Footnotes](https://rephrase.net/box/word/footnotes/syntax/)