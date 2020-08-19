### Create contexts, models and tables
`mix phx.gen.context {context_name} {model_name} {table_name} {row}`  

1. Create user model and table  
```
mix phx.gen.context Account User users first_name last_name email password_hash role
```
2. Changed code and migrate to database  
```
mix ecto.migrate
```
3. Create post model and table  
```
mix phx.gen.context Blog Post posts title content:text published:boolean user_id:references:users
```
4. Create comment model and table
```
mix phx.gen.context Blog Comment comments content:text user_id:references:user post_id:references:post
```

### Insert User into database via iex
1. `iex -S mix`  
2. `alias BlogPost.Account.User`  
3. `alias BlogPost.Repo`  
4. `user = User.changeset(%User{}, %{first_name: "Mary", last_name: "Yung", email: "Marry@test.com", password: "password", password_confirmation: "password"})`  
5. `Repo.insert(user)`  

## GraphiQL
http://localhost:4000/api/graphiql

### Get a list of all users
```
{
  users {
    id
    firstName
    lastName
    email
    role
  }
}
```

### Create a new user
```
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
```

### Login user
```
mutation {
  loginUser(input: {email: "tchan@test.com", password: "password"}) {
    token
    user{
      id
      firstName
      lastName
    }
  }
}
```

### Create Post
```
mutation {
  createPost(input: {title: "hello world", content: "testing post", published: true}){
    id
    title
    content
    user {
      id
      firstName
      lastName
    }
  }
}
```

### Create Comment
```
mutation {
  createComment(input: {content: "testing comment", post_id: 1}){
    id
    content
    post{
      title
    }
    user {
      id
      firstName
      lastName
    }
  }
}
```