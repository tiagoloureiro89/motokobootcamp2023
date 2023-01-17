- 1 - 4 GB [proof](/assets/4gb.png) . It's possible to expand to the size of the subnet through the System API.

- 2 - it's a let, and should be a var (due to let not being mutable).

- 3 - 2 things are wrong:
    - var message : Text = 0; (the 0 is a number, to be interpreted as text should be "0"). 
    - on change_message, it's wrongly set as "query", when it's actually assigning. So it should be removed the keyword "query".

- 4 - False, will return the error "shared query function must have syntactic return type 'async <typ>'"