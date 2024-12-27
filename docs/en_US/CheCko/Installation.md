# Installation

Currently, we don't publish the pre-built package to the Chrome application store. Users who would like to use CheCko should install it from the github repository.

## Install from the release zip package

### Download the release package from github

[Download CheCko v0.0.4](https://github.com/respeer-ai/linera-wallet/releases/download/v0.0.4/Packaged.linera-checko-wallet.v0.0.4.zip)

### Unzip

The extension application will be unzipped to a folder, normally, it should be **Packaged.linera-checko-wallet-$VERSION** if you don't modify the zip file name. In the following part of the document we use **$APPLICATION_DIR** to represent this unzip path.

<center>
<kbd>
  <img src="assets/2-1-2.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

### Load release package into chrome extension

Since we don't publish CheCko to chrome extension application store, so you need to load CheCko wallet into chrome in developer mode. In future we may publish release version to chrome extension application store then you can install from the store like other application. But even so, we encourage users to know how to install CheCko from source code. With that you don't need to trust anybody's application but trust what code you use. You also can get latest functionalities update when install from code.

- Open chrome extension manager

<center>
<kbd>
  <img src="assets/2-1-3-1.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

</center>

- Enable developer mode

<center>
<kbd>
  <img src="assets/2-1-4.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

- Click **Load unpacked** button, goto **$APPLICATION_DIR**, then load unpacked CheCko wallet

<center>
<kbd>
  <img src="assets/2-1-5.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

- Check installation of CheCko wallet

<center>
<kbd>
  <img src="assets/2-1-6.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

- Access installed CheCko wallet

<center>
<kbd>
  <img src="assets/2-1-7.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

## Install from source code

### Clone repository

```
git clone https://github.com/respeer-ai/linera-wallet.git
cd linera-wallet
git submodule update --init --recursive
```

### Install rust toolchain

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Install wasm toolchain then compile

```
yarn add -s wasm-pack
yarn
yarn build:wasm
yarn build:bex
```

### Load built package into chrome extension

It's the same as the above section besides that, you need to load from directory *linera-wallet/dist/bex*.

## Run MaaS (Microchain as a Service) RPC endpoint

CheCko should be run with MaaS RPC endpoint, which maintain microchain store for CheCko wallet without private key and  connect CheCko to Linera network. CheCko have preset RPC endpoint deployed by respeer.ai. But we encourage users to run RPC endpoint by themselves. Trust nobody but yourself!

```
git clone https://github.com/respeer-ai/linera-protocol.git
cd linera-protocol
git checkout respeer-maas-testnet_archimedes-5fcbc190-2024_12_06
cargo install --path linera-service --features disable-native-rpc,enable-wallet-rpc,enable-request-application,storage-service
cargo install --path linera-storage-service --features storage-service
```

For the first time to run the RPC endpoint, you can run
```
git clone https://github.com/respeer-ai/res-peer.git
cd res-peer
./run_node_service.sh -N testnet-archimedes
```

After that if you would like to restart the node service, you should not run from script or it'll clean all of your microchain data and create a new one. You should run the following command for the exists node
```
linera --max-retries 100 --retry-delay-ms 10 service --port 30080 --listener-skip-process-inbox
```

After that, you can set your own RPC endpoint to CheCko's network then use it.

