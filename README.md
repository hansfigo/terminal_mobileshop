<h1>Command-line Application MobileShop</h1>
Simple Command-line App using dart that implementing OOP (Object Oriented Programming), MVC (Model, View, Controller) concept and Control-Flow.

<h4>Feature</h4>
<ul>Seller can create or delete their product</ul>
<ul>Buyer can add product to cart</ul>
<ul>Buyer can remove product from cart</ul>
<ul>Error Handling, example : Input type error, Range/Index error</ul>
<ul>Support on Windows (CMD) and Linux / MacOs (Bash)</ul>


<h4>Problem I Faced</h4>
1. The productList is empty because a new instance of the ProductList class
is created every time the addProduct or showProduct method is called.
To solve this, create only one instance of the ProductList class and pass it to
the controller methods.

