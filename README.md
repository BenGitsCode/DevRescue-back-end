# DevRescue A bookmark manager for Developers

An API to store and manage links to helpful resources for junior developers.

It allows users to create an account and store links in the database. They can be arranged by tags but not yet searched or sorted by them.

The API does not currently validate game states.

## User SignUp

The `create` action expects a *POST* of `credentials` identifying a new user to
 create, e.g. using `getFormFields`:

```html
<form class="form-inline sign-up">
<div class="form-group">
  <input type="email" class="form-control" name="credentials[email]" placeholder="Email">
  <input type="password" class="form-control" name="credentials[password]" placeholder="Password">
  <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
</div>
    </form>


```

or using `JSON`:

```json
{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
  }
}
```

### changepw

The `changepw` action expects a PATCH of `passwords` specifying the `old` and
 `new`.

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful the reponse will have an HTTP status of 400 Bad
 Request.

---


## Link to Front End Repo
https://github.com/Benjamski/DevRescue-front-end
