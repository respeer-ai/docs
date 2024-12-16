# Set network endpoint

CheCko integrates ResPeer RPC network endpoint in default. Even the RPC endpoint won't hold users' private key, we still encourage user to run their own RPC endpoint to maintain their own chain store. Trust nobody but yourself in the digital world. And, if you really like to use ours or some third party RPC endpoint in future, keep in mind that don't put account with large amount assets into your hot wallet.

### Open network setting menu

It's a bit different of CheCko network from Metamask. In Metamask, a network means a RPC endpoint with blockchain ID. But in CheCko, a network means a genesis faucet endpoint which indicates the genesis network, and RPC endpoint which also act as microchain store of the wallet's microchains. So it's not easy to change the network endpoint currently, but we'll support it in future. Currently we suggest users to use preset network in the CheCko on Linera testnet firstly. But it may be slow for some users because we just deploy a RPC endpoint which is not distributed all over the world. Users also can run their own MaaS cluster to act as their own RPC endpoint, then they should do that at the beginning they use CheCko wallet at this moment.

<center>
<kbd>
  <img src="assets/2-3-1.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="assets/2-3-2.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="assets/2-3-3.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

### Fill faucet, rpc and blob gateway endpoint, then save network

Specifically, the blob gateway service is provided by respeer.io as the blob indexer of Linera network. User can also run their own blob gateway, too, but the default blob gateway application used in ResPeer services will always be the one provided by respeer.io.

<center>
<kbd>
  <img src="assets/2-3-4.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="assets/2-3-5.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

### Change network

Now you can change network.

**BE CAREFUL**: If you would like to see your microchains in another network, you should import it manually, otherwise you can't process it. That means, each RPC endpoint has its own storage for microchains.

<center>
<kbd>
  <img src="assets/2-3-6.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>
