# Installation

Currently we don't publish pre-built package to chrome application store. Users who would like to use CheCko should install it from github repository.

## Install from release zip package

### Download release package from github

```
TBD
```

### Unzip

Extension application will be unzipped to a folder, normally it should be **Packaged.linera-checko-wallet-$VERSION** if you don't modify the zip file name. In the following part of the document we use **$APPLICATION_DIR** to represent this unzip path.

<center>
<kbd>
  <img src="../../assets/2-1-2.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>

### Load release package into chrome extension

Since we don't publish CheCko to chrome extension application store, so you need to load CheCko wallet into chrome in developer mode. In future we may publish release version to chrome extension application store then you can install from the store like other application. But even so, we encourage users to know how to install CheCko from source code. With that you don't need to trust anybody's application but trust what code you use. You also can get latest functionalities update when install from code.

- Open chrome extension manager

<center>
<kbd>
  <img src="../../assets/2-1-3.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>
<br>

- Enable developer mode

<center>
<kbd>
  <img src="../../assets/2-1-4.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>
<br>

- Click **Load unpacked** button, goto **$APPLICATION_DIR**, then load unpacked CheCko wallet

<center>
<kbd>
  <img src="../../assets/2-1-5.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>
<br>

- Check installation of CheCko wallet

<center>
<kbd>
  <img src="../../assets/2-1-6.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>
</center>
<br>

- Access installed CheCko wallet

<center>
<kbd>
  <img src="../../assets/2-1-7.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
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
yarn install wasm-pack
yarn
yarn build:wasm
yarn build:bex
```

### Load built package into chrome extension

It's totally same as above section besides that you need to load from directory *linera-wallet/dist/bex*.
