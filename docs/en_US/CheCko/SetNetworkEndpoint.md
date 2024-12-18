# Set network endpoint

CheCko integrates the ResPeer RPC network endpoint by default. Even if the RPC endpoint doesn't hold users' private keys, we still encourage users to run their own RPC endpoint to maintain their own chain store. Trust nobody but yourself in the digital world. And, if you really like to use ours or some third-party RPC endpoint in the future, keep in mind that don't put accounts with large amounts of assets into your hot wallet.

## Open network setting menu

It's a bit different of the CheCko network from Metamask. In Metamask, a network means an RPC endpoint with blockchain ID. But in CheCko, a network means a genesis faucet endpoint, which indicates the genesis network, and an RPC endpoint, which also acts as a microchain store of the wallet's microchains. So,it's not easy to change the network endpoint currently, but we'll support it in the future. Currently, we suggest users use the preset network in the CheCko on Linera testnet first. But it may be slow for some users because we just deploy a RPC endpoint that is not distributed all over the world. Users can also run their own MaaS cluster to act as their own RPC endpoint, they should do that at the beginning they use the CheCko wallet at this moment.

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

## Fill the faucet, RPC, and blob gateway endpoint, then save the network.

Specifically, the blob gateway service is provided by respeer.io as the blob indexer of the Linera network. User can also run their own blob gateway, but the default blob gateway application used in ResPeer services will always be the one provided by respeer.io.

<center>
<kbd>
  <img src="assets/2-3-4.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="assets/2-3-5.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

## Change network

Now you can change the network.

**BE CAREFUL**: If you would like to see your microchain in another network, you should import it manually, otherwise you can't process it. That means each RPC endpoint has its own storage for microchains.

<center>
<kbd>
  <img src="assets/2-3-6.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>
