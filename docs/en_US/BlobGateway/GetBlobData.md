# Get blob data

We have to fetch uploaded blob data with graphql `POST` method currently (this may be modified in future). If it's a image which should be displayed in frontend, it's a bit complex. So we create blob gateway to let frontend be able to fetch blob data with `GET` method directly.
