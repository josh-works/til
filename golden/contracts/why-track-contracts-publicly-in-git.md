# Why track contracts publicly in Git

The canonacle guide of why this is useful: [Dropping hashes: an idiom used to demonstrate provenance of documents (kalzumeus.com)](https://www.kalzumeus.com/essays/dropping-hashes/)

For a variety of reasons, it can be useful to be able to

> demonstrate provenance of [a document]

Provenance `is the chronology of the ownership, custody or location of a historical object.`

Contracts count as historical documents. 

Git is a "version control system" that (among other things) allows a character-by-character understanding of how a document has changed over time.

For example, I'm working on a certain kind of legal document called a "Planned Unit Design" document. I have a draft that is public, which I use to solicit comments and feedback, here: []()

I will be asking people to sign a petition indicating their agreement, and the language on that petition will be, more or less:

> I approve of Josh's desire for a PUD, according to the terms of https://josh.works/pud.

Now - I can change that page. What if, after getting 5 signatures, I changed it to 

> I agree to remit to Josh Thompson 1/2 of all income for the rest of my life.

This would be unenforceable, because I changed the contract after they agreed to it. I could say, however:

> no, this is how the document always was!

How could they prove otherwise?

## Enter Git

I use [git](https://en.wikipedia.org/wiki/Git) and [GitHub](https://github.com/josh-works/) to manage my website - all changes are public, visible, and explorable by anyone. 

For example, here's the document history for the above page, `josh.works/pud`

[https://github.githistory.xyz/josh-works/josh-works.github.io/blob/master/_posts/2021-09-30-iowa-st-pud/2021-09-30-iowa-st-pud.md](https://github.githistory.xyz/josh-works/josh-works.github.io/blob/master/_posts/2021-09-30-iowa-st-pud/2021-09-30-iowa-st-pud.md)

I tend to draft documents on Git/github somewhere. While any document tracked here is public, I am open to the idea of, in the event of a contract/document needing to remain confidential, I would be happy to track hashes of documents, or encrypt the contents of the file. 

That way, provenance can still be proved, but the actual language can remain private until it might be necessary to make it available to others. 

I also have a handy URL I can send to someone to get their thoughts on what I've written. And if you want to see the git history of this very document you're reading, in the upper right-hand corner of this page, click the button that says `Open in Git History`. Hit the left and right arrows on your keyboard, and you'll see successive versions of the document (with the changes, or `diffs` highlighted).

### Resources

- [https://www.kalzumeus.com/essays/dropping-hashes/](https://www.kalzumeus.com/essays/dropping-hashes/)
- [Provenance (Wikipedia)](https://en.wikipedia.org/wiki/Provenance)