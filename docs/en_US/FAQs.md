# Frequently asked questions

### Linera is the fastest blockchain, why CheCko needs to waiting sometimes ?

As we already described, Linera is the fastest blockchain, but at this moment, CheCko is focus in build a workable version of Linera chrome extension wallet, and the implementation may be not optimal. We will continue optimize this.

### When creating microchain in CheCko, why sometimes we need to wait for several minutes ?

To some extent it's the same as the above questions. But there is differences for some case. The first is that after we create microchain, we will request 4 application to the new microchain. It contains wrapper test Linera token, swap application from Linera Hacker community, application management service and blob gateway application from respeer.ai. It still need some time to execute those preparation. The second is that if the wallet client is run in a weak network, it may take longer time to communicate with RPC endpoint. The third is that on the Linera testnet, validators is located in different area which may be far away from RPC endpoint, thus RPC endpoint need more time to communicate with validators for block finality.

## After creating microchain, it should contains 4 applications, why I see some applications ask me to request ?

Sometimes the request may be timeout. As you know we cannot wait forever in frontend, so we will timeout if we cannot finish all requests within the time. But don't worry, you just need to request again for different application then it'll work.

### Can I start to use new microchain without the preset application requested ?

You can use it for native tokens transfer, but if you would like to transfer some ERC20 like tokens, you must request all.

### Can I change RPC endpoint at this moment ?

You can, but sorry you have to import your microchain to new RPC endpoint manually. Currently we don't implement a automatically transfer of those microchains.

### Will my data be persistent if the network is reset ?

Sorry again, it cannot now. In future we'll develop a backup/recovery mechanism to backup those data, then create it as genesis data of new application after network restarted. But users still have to claim their content with their signature, so make sure you backup your private key, mnemonic, microchain creation materials properly.
