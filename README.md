A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

#Problem
1. The productList is empty because a new instance of the ProductList class
is created every time the addProduct or showProduct method is called.
To solve this, create only one instance of the ProductList class and pass it to
the controller methods.

