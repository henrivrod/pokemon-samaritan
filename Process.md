1. First step was creating a user sign in functionality based on two tutorials:
https://medium.com/@rmeji1/creating-a-login-with-simple-auth-using-ruby-on-rails-7dd95a03cb7a
https://dev.to/kjdowns/creating-a-user-login-system-ruby-on-rails-2kl2
2. Added database table for Pokemon using command line. I chose to use text as the data type for image in case urls were too long to fit in a string:
```console
rails generate migration CreatePokemon name:string image:text
rails db:migrate
```
3. Did the same for Types:
```console
rails generate migration CreateTypes name:string
rails db:migrate
```
4. Create Join table for Pokemon and Types called PokeType:
```console
rails g model PokeType pokemon:references type:references
```
5. Create and update Pokemon, Type and PokeType models.
6. Added Pokemon and Types controller files.
7. Set up the seeds.rb file to seed the database with Pokemon, Types and Poketypes.