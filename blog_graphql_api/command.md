### Insert User into database via iex
1. `iex -S mix`  
2. `alias BlogPost.Account.User`  
3. `alias BlogPost.Repo`  
4. `user = User.changeset(%User{}, %{first_name: "Mary", last_name: "Yung", email: "Marry@test.com", password: "password", password_confirmation: "password"})`  
5. `Repo.insert(user)`  

## GraphiQL
http://localhost:4000/api/graphiql

### Get a list of all users
{
  users {
    id
    firstName
    lastName
    email
    role
  }
}

### Create a new user
mutation {
  registerUser(input: {firstName: "Timmy", lastName: "Chan", email: "tchan@test.com", password: "password", passwordConfirmation: "password"})
  {
    id
    firstName
    lastName
    email
    role
  }
}