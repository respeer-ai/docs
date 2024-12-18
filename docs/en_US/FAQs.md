# Frequently asked questions

### Linera is the fastest blockchain, why CheCko need to wait sometimes?

As we already described, Linera is the fastest blockchain, but at this moment, CheCko is focused on building a workable version of the Linera Chrome extension wallet, and the implementation may be not optimal. We will continue to optimize this.

### When creating microchain in CheCko, why do we need to wait for several minutes sometimes?

To some extent, it's the same as the above questions. But there are differences in some cases. The first is that after we create the microchain, we will request four applications for the new microchain. It contains a wrapper test Linera token, swap application from the Linera Hacker community, an application management service, and a blob gateway application from respeer.ai. It still needs some time to execute those preparations. The second is that if the wallet client is run in a weak network, it may take a longer time to communicate with the RPC endpoint. The third is that on the Linera testnet, validators are located in different areas, which may be far away from the RPC endpoint. Thus the RPC endpoint needs more time to communicate with validators for block finality.

### After  the microchain, it should contain four applications, why do I see some applications ask me to request?

Sometimes, the request may be a timeout. As you know, we cannot wait forever in front, so we will timeout if we cannot finish all requests within the time. But don't worry, you just need to request again for a different application, and then it'll work.

### Can I start to use the new microchain without the preset application requested?

You can use it for native tokens transfer, but if you would like to transfer some ERC20-like tokens, you must request all.

### Can I change the RPC endpoint at this moment?

You can, but sorry, you have to import your microchain to the new RPC endpoint manually. Currently, we don't implement an automatic transfer of those microchains.

### Will my data be persistent if the network is reset?

Sorry again, it cannot now. In the future, we'll develop a backup/recovery mechanism to back up those data, then create it as genesis data of new applications after the network restarted. But users still have to claim their content with their signature, so make sure you back up your private key, mnemonic, and microchain creation materials properly.
