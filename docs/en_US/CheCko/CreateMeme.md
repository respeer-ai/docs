# Fungible ERC20-like meme token

In this chapter, we describe how to create and transfer meme tokens on the Linera testnet. Users must understand the ERC20 spec on Linera is provided by the Linera Hacker community. The front-end application is also provided by the Linera Hacker community. CheCko just implements ERC20-like spec to support transferring between different accounts. Users should understand their local policy well to know about the risks of creating meme tokens. We (respeer.ai and developers of the services) won't ensure any risks caused by users' behavior of usage for those products.

## Create ERC20 like fungible meme

The `Linera Hacker` community defines a draft of ERC20- like fungible token on Linera. The Web application is deployed on `https://testnet-archimedes.linerameme.fun` to let users be able to create meme on Linera easily. Each created memes will be listed to `https://testnet-archimedes.lineraswap.fun` automatically.

<br>
<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-1.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-2.png" style="max-width: 100%; width: 768px; height: auto; display: block" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-3.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-4.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-5.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-6.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-7.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-8.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-9.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-10.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-11.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-12.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-13.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-14.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-15.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-16.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-17.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-18.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-19.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-20.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-21.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-22.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-23.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-24.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-25.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-26.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-27.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

<kbd style="margin-top: 16px">
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-28.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

</center>

## Import exists meme

Before you interact with the meme tokens, you must import it into your wallet.

<br>
<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-29.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-30.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-31.png" style="max-height:100%; height: 800px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-32.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

## Transfer ERC20 like fungible meme

After success in importing ERC20 fungible tokens, you can transfer tokens to other accounts. Some tokens may support minting by native token (currently, due to the application not holding native tokens on testnet, you have to mint with WTLINERA token which could be minted by native token) then users can mint within the wallet directly.

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-33.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-34.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-35.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-36.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-37.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-38.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

## Swap meme

Every fungible meme token created on [Linera meme](https://testnet-archimedes.linerameme.fun) will be listed to [Linera swap](https://testnet-archimedes.lineraswap.fun) automatically. Users can Swap the meme token in the SWAP application directly.

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-39.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-40.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-41.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-42.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>

<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-43.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>
<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-44.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

</center>

## Add liquidity for swap pool

Users can also Add Liquidity for the token pools in the SWAP application.

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-45.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-46.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-47.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-48.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

## Remove liquidity for swap pool

User can also Remove Liquidity for the token pools in the SWAP application.

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-49.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-50.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-51.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-52.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

## View tokens pair graph and leaderboard

Users can view the token pools candle graph in [Linera swap](https://testnet-archimedes.lineraswap.fun). A simple leaderboard is implemented to display top tokens and top holders.

<center>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-53.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
<kbd>
  <img src="https://raw.githubusercontent.com/respeer-ai/docs/refs/heads/master/docs/assets/2-7-54.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

