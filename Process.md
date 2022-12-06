1. First step was creating a user sign in functionality based on two tutorials:
https://medium.com/@rmeji1/creating-a-login-with-simple-auth-using-ruby-on-rails-7dd95a03cb7a
https://dev.to/kjdowns/creating-a-user-login-system-ruby-on-rails-2kl2
2. Added database table for pokemon using command line:
```console
rails generate migration CreatePokemon name:string image:text
rails db:migrate
```