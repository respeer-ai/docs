# Get blob data

We have to fetch uploaded blob data with graphql `POST` method currently (this may be modified in future). If it's a image which should be displayed in frontend, it's a bit complex. So we create blob gateway to let frontend be able to fetch blob data with `GET` method directly.

## Blob gateway

Like ipfs.gateway, we deploy an application on [Blob Gateway](https://testnet-archimedes.blobgateway.com) do index blobs uploaded to Linera blockchain. Frontend application can fetch blob data with GET method from Blob Gateway directly.

<br>
<center>
<kbd>
  <img src="assets/3-2-1.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>
