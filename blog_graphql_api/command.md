### Insert User into database via iex
1. `iex -S mix`  
2. `alias BlogPost.Account.User`  
3. `alias BlogPost.Repo`  
4. `user = User.changeset(%User{}, %{first_name: "Mary", last_name: "Yung", email: "Marry@test.com", password: "password", password_confirmation: "password"})`  
5. `Repo.insert(user)`  
