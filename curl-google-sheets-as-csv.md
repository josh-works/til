# How to cURL Spreadsheet From Google Drive

Here's your doc:

https://docs.google.com/spreadsheets/d/1YbZDqaZ17ICaTGCx1-ZZ4zkqjUjo3SKyl_V00W6zLuo/edit#gid=550139015

Get the `document_id`, after `d/` and before the `/edit`. Append it to the end of:

```
$ curl -L 'https://docs.google.com/spreadsheets/d/document_id/export?exportFormat=csv'
```

And you're good to go. `-O file_name.csv` to save it somewhere!


### Resources

- [https://stackoverflow.com/questions/14014283/curl-google-spreadsheet-as-csv](https://stackoverflow.com/questions/14014283/curl-google-spreadsheet-as-csv)