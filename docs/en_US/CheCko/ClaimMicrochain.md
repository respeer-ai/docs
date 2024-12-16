# Claim microchain

Each microchain will be claimed from the preset faucet with the user's public key.

### Claim, backup and validate microchain

<br>
<center>
<kbd>
  <img src="../../assets/2-5-1.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="../../assets/2-5-2.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="../../assets/2-5-3.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>

**Note**: After claiming microchain, swap application, ams application, wlinera application and blob gateway application will be requested to create chain automatically. This may be removed later after we can call any application on any chain.

**Note**: User must backup microchain creation material properly. It could be used to recover the created microchain on another RPC endpoint again later. Keep in mind that in Linera, microchain is everything of your assets.

### Import microchain

Existing microchain could be imported to another RPC endpoint or wallet.

<br>
<center>
<kbd>
  <img src="../../assets/2-5-4.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="../../assets/2-5-5.png" style="max-height:100%; height: 800px; width: auto; display: block;" />
</kbd>
</center>

### Validate preset applications

Preset applications (application management service, wrapper test Lienra, linera swap application, blob gateway application) should be imported automatically to the created or imported microchain. But it may fail sometimes due to unexpected errors like network failure. At that time, you can go to the microchain detail page and then request those applications manually in the wallet. You must ensure all of the preset applications are requested correctly before you start to use the microchain. In the future, we'll be able to use any applications anywhere, and then we'll remove those workaround.

<br>
<center>
<kbd>
  <img src="../../assets/2-5-6.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="../../assets/2-5-9.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
  Application management service is not<br>requested correctly, you should click <br><strong>Request now</strong> to request it manually
</kbd>
<kbd>
  <img src="../../assets/2-5-8.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
</center>
