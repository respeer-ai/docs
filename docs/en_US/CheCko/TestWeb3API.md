# Support web3.js APIs

Users can connect to Linera testnet through CheCko with web3.js api. With some Linera specific APIs, developers can invoke CheCko with totally the same graphql schema as Node Service. CheCko has a 100ms delay for each popup the window, so if a web application has some consecutive operations, they should be executed with interval **100ms** one by one if everyone needs to popup window to confirm. Otherwise, the user will get consecutive confusing **Executing** popup the windows. But for some interactive games, this may not function well. So CheCko designed a silent mode of operations. If the user selects **Use same selection for future requests**, then CheCko won't pop up to the same operations within 24 hours. But for operations like **Transfer**, **Approve** which will transfer users' balance, and for **Sign** which should let users understand the content, CheCko will always pop up to confirm.

## Request accounts

```
const web3 = new Web3(window.linera)
web3.eth.requestAccounts().then((accounts) => {
  console.log(accounts)
}).catch((error) => {
  console.log(error)
})
```

## Get provider state

```
window.linera?.request({
  method: 'metamask_getProviderState'
}).then((result) => {
  console.log(result)
}).catch((e) => {
  console.log('metamask_getProviderState', e)
})
```

## Sign content

```
const web3 = new Web3(window.linera)

const accounts = await web3.eth.requestAccounts()
if (!accounts.length) return console.log('Invalid account')

const hexContent = Web3.utils.utf8ToHex('Hello World!')

web3.eth.sign(hexContent, '0x' + accounts[0].slice(0, 40))
  .then((result) => {
    console.log(result)
  }).catch((e) => {
    console.log('eth_sign', e)
  })
```

## Publish blob data

Be careful, Linera has two members to represent an account. One is the public key，which is the same as the traditional public key. Another is the owner, which is a digest of the public key. The owner is unique to the Linera for the account.

```
const web3 = new Web3(window.linera)

const accounts = await web3.eth.requestAccounts()
if (accounts.length === 0) return

const state = await window.linera?.request({
  method: 'metamask_getProviderState'
}) as Record<string, string>

const owner = await db.ownerFromPublicKey(accounts[0])

const result = await window.linera.request({
  method: 'linera_graphqlPublishDataBlob',
  params: {
    query: {
      variables: {
        chainId: state.chainId.replace('0x', ''),
        bytes: [12, 12, 12, 12, 12, 12, 12, 12]
      }
    },
    operationName: 'requestApplication'
  }
})
```

## Linera mutation

```
const web3 = new Web3(window.linera)

const accounts = await web3.eth.requestAccounts()
if (accounts.length === 0) return

const state = await window.linera?.request({
  method: 'metamask_getProviderState'
}) as Record<string, string>

const owner = await db.ownerFromPublicKey(accounts[0])

const result = await window.linera.request({
  method: 'linera_graphqlMutation',
  params: {
    query: {
      query: TRANSFER.loc?.source?.body,
      variables: {
        chainId: state.chainId.replace('0x', ''),
        recipient: {
          Account: {
            chain_id: state.chainId.replace('0x', ''),
            owner
          }
        } as rpc.Recipient,
        amount: '0.01'
      }
    },
    operationName: 'transfer'
  }
})
```

## Linera query

```
const web3 = new Web3(window.linera)

const accounts = await web3.eth.requestAccounts()
if (accounts.length === 0) return

const state = await window.linera?.request({
  method: 'metamask_getProviderState'
}) as Record<string, string>

const res = await window.linera?.request({
  method: 'linera_graphqlQuery',
  params: {
    publicKey: accounts[0],
    query: {
      query: applications.loc?.source?.body,
      variables: {
        chainId: userStore.chainId
      }
    }
  }
})
```

## Linera subscription

```
const subscriptionHandler = (msg: unknown) => {
  console.log('Subscription', msg)
}

window.linera?.request({
  method: 'linera_subscribe'
}).then((_subscriptionId) => {
  subscriptionId.value = _subscriptionId as string
  window.linera.on('message', subscriptionHandler)
}).catch((e) => {
  console.log('Fail subscribe', e)
})

void window.linera?.request({
  method: 'linera_unsubscribe',
  params: [subscriptionId.value]
})
```
