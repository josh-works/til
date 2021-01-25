# How to bulk-format copied/pasted text from Whatsapp/Slack

My go-to regexes:

To match in the brackets for:

```
[12:53 PM, 1/24/2021] Josh Thompson:
^^^^^^^^^^^^^^^^^^^^^
```

I use:

```
^.+?(?=]).
```

When I copy text out of WhatsApp desktop, I get a bunch of metadata:

```
[12:53 PM, 1/24/2021] Josh Thompson: I am ruined for how curious I am for the practical outcomes of these metal plates.
[12:53 PM, 1/24/2021] Josh Thompson: What real world the value is delivered with them? I have no doubt that there's plenty. I just can't imagine it.
[12:55 PM, 1/24/2021] Josh Thompson: I understand that nothing is 'truly flat' irl, so I'm fascinated by increasingly effortful attempts to get closer and closer to 'flat'
[12:56 PM, 1/24/2021] Josh Thompson: It is like adding another nine to the degree of flatness. 99% flat is a far cry from 99.9%flat, etc
[12:57 PM, 1/24/2021] Josh Thompson: If a planer for flattening adhesive wood achieves 99% flatness. I suspect those three discs are closer to 99.9 or 99.99% flat.
```

I want to be able to selectively find-replace-delete-whatever the metadata, basically everything in the brackets.

I could easily do this a few different ways (use my mouse! Do it one at a time, use a `ctrl-f` on the date, and multi-cursor the selection to what I want)

But this seems like a good place to start growing my regex skills.

```
^.+?(?=]).     # almost exactly right
^              # start of line
 .+            # any character, any number of times
   ?           # starting a look-ahead/behind/around sequence
    (   )      # the "argument" provided to the looking sequence
     ?=]       # the ? argument = a literal left bracket
         .     # single "any character" "grabs" the bracket, because otherwise the look-ahead goes until it finds the bracket, but doesn't include it
```


### Resources

- [Rubular](https://rubular.com/)
- [How to match “anything up until this sequence of characters” in a regular expression? (StackOverflow)](https://stackoverflow.com/questions/7124778/how-to-match-anything-up-until-this-sequence-of-characters-in-a-regular-expres)
- [regular-expressions.info](https://www.regular-expressions.info)
- [https://regex101.com/](https://regex101.com/)