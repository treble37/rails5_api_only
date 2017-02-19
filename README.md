# Provider

### Step 1 - log into the rails console and initialize a new Doorkeeper app

```ruby
app = Doorkeeper::Application.new(name: 'mock-oauth-client', redirect_uri: 'https://mock-oauth-client.herokuapp.com/oauth/callback')
```

```ruby
=> #<Doorkeeper::Application id: nil, name: "mock-oauth-client", uid: nil, secret: nil, redirect_uri: "https://mock-oauth-client.herokuapp.com/oauth/c...", scopes: "", created_at: nil, updated_at: nil>
```

### Step 2 - save

app.save

```ruby
INSERT INTO "oauth_applications" ("name", "uid", "secret", "redirect_uri", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["name", "mock-oauth-client"], ["uid", "abcda10be0b0b6e36c27a63fd891708db909d4f615712de03ac0fa97b88c7691"], ["secret", "1234cc256263234r6842ad4387a8211c8a7f567e43432b0400ca5ce3506dcef4"], ["redirect_uri", "https://mock-oauth-client.herokuapp.com/oauth/callback"], ["created_at", 2017-08-17 19:39:17 UTC], ["updated_at", 2017-08-17 19:39:17 UTC]]
```

Note: Jot down the client id (uid) and client secret (secret) for use in your call to the OAuth provider to get an access token
