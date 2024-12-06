# Application integration

Linera application or web application can register uploaded blob data to blob gateway for easy indexing.

### Register blob data to blob gateway in contract.rs

```
fn register_blob_gateway(
    &mut self,
    blob_gateway_application_id: ApplicationId,
    blob_hash: CryptoHash,
) {
    let call = BlobOperation::Register {
        data_type: BlobDataType::Image,
        blob_hash: blob_hash,
    };
    self.runtime.call_application(
        true,
        blob_gateway_application_id.with_abi::<BlobGatewayApplicationAbi>(),
        &call,
    );
}
```

### Get blob data from frontend

```
curl https://testnet.blobgateway.com/chains/$BLOB_GATEWAY_CREATION_CHAIN/applications/$BLOB_GAETWAY_APPLICATION_ID/images/$BLOB_HASH
curl https://testnet.blobgateway.com/chains/$BLOB_GATEWAY_CREATION_CHAIN/applications/$BLOB_GAETWAY_APPLICATION_ID/contents/$BLOB_HASH
curl https://testnet.blobgateway.com/chains/$BLOB_GATEWAY_CREATION_CHAIN/applications/$BLOB_GAETWAY_APPLICATION_ID/videos/$BLOB_HASH
curl https://testnet.blobgateway.com/chains/$BLOB_GATEWAY_CREATION_CHAIN/applications/$BLOB_GAETWAY_APPLICATION_ID/html/$BLOB_HASH
```

