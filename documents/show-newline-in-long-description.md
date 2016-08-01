http://api.rubyonrails.org/

simple_format(text, html_options = {}, options = {}) Link
Returns text transformed into HTML using simple formatting rules. Two or more consecutive newlines(\n\n) are considered as a paragraph and wrapped in <p> tags. One newline (\n) is considered as a linebreak and a <br /> tag is appended. This method does not remove the newlines from the text.

You can pass any HTML attributes into html_options. These will be added to all created paragraphs.
```
<%= simple_format(product.description) %>
```