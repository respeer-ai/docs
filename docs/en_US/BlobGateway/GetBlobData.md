# Get blob data

We have to fetch uploaded blob data with the graphql `POST` method currently (this may be modified in the future). If it's an image that should be displayed in the front, it's a bit complex. So we create a blob gateway to let the frontend be able to fetch blob data with `GET` method directly.
