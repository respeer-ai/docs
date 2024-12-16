![image](webui/src/assets/ResPeer@512w.png)

# ResPeer: Peer-to-Peer content publishing application on Linera

[![Test](https://github.com/web3eye-io/res-peer/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/web3eye-io/res-peer/actions/workflows/test.yml)

## ResPeer on Linera

ResPeer is a Peer-to-Peer content publishing application on Linera. ResPeer aims to build a community in which authors can publish content to get credits easily, and the credits can be used to buy assets.


Basically, there're two types of producers in ResPeer; one is the content producer who publishes content, they will get rewards from the reward pool of the foundation and get credit incentives issued by credit application. Another is the asset producer who creates digital art and then puts it on shelves of the market for sale, the asset's price will be set with Linera.


An initial credit supply will be set when the application is deployed to Linera. The credits of each reaction will be exponential decay. Each credit amount earned by user reaction has its alive time and will be destroyed (or returned to the current total supply) when it expires. If the credit balance is lower than the threshold, the total supply will be increased by 5% of the initial supply.


ResPeer provides a market for asset producers to put their work on shelves. The producer sets the price of their work with Linera. The market has a unique setting that defines the exchange rate of the credits and Linera tokens. When users buy assets, if they have credits, they can pay for the work with Linera tokens and credits. A fixed ratio of the asset sale amount will be deposited to the foundation application, which will be used to reward the content and pay the fee for the reviewer.

## Workflow

![image](webui/src/assets/Workflow.png)

TL;NR

## Reviewer

In ResPeer, a committee which is organized by community members will review all of the submitted content, including articles, comments, and artwork. We believe a product that does not advocate motivated values will not live long. So, members of the community who proved their uprightness and talent will be selected as the reviewers of the committee. After they succeed in approving the content, then they will receive some rewards from the foundation.

## Foundation

Foundation is the application in which ResPeer maintains its fund. The main source of the fund will be the transaction commission of the market. For each transaction, a fixed ratio of the total amount will be deposited to the foundation. A fixed part of the foundation's fund will be used to reward the content author, the reviewer, and the activity winner.

## Feed

ResPeer provides a feed application as an on-chain CMS, which will record the content directory of the feed. It also maintains the user's reaction to the content. When the author's content is approved by the committee, the author will receive some rewards from funding. When user action happens, the feed application will call the credit application to mint credits for the sender. This invocation happens on-chain.

Users can like, dislike, or comment on content. It's hard to recognize if it's a spam user. So, in the first stage, each sender can only like, dislike, and comment on one content each time, and each sender can only react to content one time within one minute. Users can also reward the content author with gifts, credits, or Linera tokens. In the future, we may introduce some decentralized review mechanisms to avoid spam.

## Credit

ResPeer provides credits to incentive users who help to keep the network active. Users can earn credits through

* Publish content to feed
* Like or dislike the content
* Comment content
  * The comment is also content, but with less weight to the network, so posting a comment earns fewer credits compared to the original content

Basically, credits are invaluable in the network. It's valuable only when the market sets an exchange rate between the credit and the Linera token. After that, when users buy assets from the market, they can pay with Linera Token, combined with credits.

Each credit amount has its lifetime. The user's balance will only contain amounts that are not expired. We have two options for the expired credits: return to total supply or burn it. But it's a bit early to decide which one we should fulfill due to the lack of enough thought about the use cases.

## Avatar Marketplace

ResPeer provides a market to producers. Besides publishing content, the producer can also put their works on shelves with Linera token price. The exchange rate between credits and Linera tokens will be set through DAO. After that, when users want to buy assets from the market, they can pay with Linera tokens combined with credits if they already earn some. A fixed ratio of the total amount of each market transaction will be deposited to the foundation and used as a reward to the content author, the reviewer, and the activity winner.

## Reader Club

Reader club is another application that will hold some activities, e.g. The Most Popular Content. Readers can donate to the reader club, recommend content, share their views, and participate in activities.

## Author Copilot and Computing Market

ResPeer leverages Linera's Edge AI to provide an AI copilot that assists authors with various tasks, such as fixing grammar, rewriting, generating illustrations or covers, and abbreviations. This helps authors enhance their content even if they have limitations in writing or artistic skills.

Authors can rent computing resources from community members who have registered their resources with ResPeer at reasonable prices. If an author finds the price acceptable, they can rent the resources needed for their AI-assisted tasks, paying the computing provider incrementally as the work progresses. For example, if 10,000 words need rewriting, the author pays after every 1,000 words are generated. If the provider tries generating more words without being paid, the AI copilot will stop. Similarly, if the author is unsatisfied with the initial work, they can withhold further payments, potentially losing a small amount paid for the initial work.

This model allows authors to affordably leverage AI capabilities to improve their content while community members provide computing resources. The incremental payment structure mitigates risks for both parties.

![image](https://github.com/user-attachments/assets/7e9650d8-e443-4657-9dee-e5424d9efd36)

## Certificate

For some worthy users, the committee can decide to issue a certificate to the user. Currently, users who donate to the reader club will receive a donation certificate with the badge, the author who publishes the most popular content will receive a golden author certificate, and each activity winner will receive an activity winner certificate.


Users can reward content they like with the Linera token. They also can use the assets they bought from the market to decorate themselves in the feed application. If they get some certificate and badge successfully, it will also be displayed within the feed application.


## Compiling and Deployment
You should install yarn and rust before the next steps.
```
git clone https://github.com/linera-io/linera-protocol.git
cd linera-protocol
cargo install --path linera-service --features storage-service
cargo install --path linera-storage-service --features storage-service
git clone https://github.com/respeer-ai/res-peer.git
cd res-peer
cargo build --release
./deploy-local.sh
cd webui
yarn
yarn start
```

## Todo

- [ ] Store content to blob
  - [ ] Publish content to blob storage
  - [ ] Get content from blob storage
- [ ] Implement foundation with native token
  - [ ] Implement deposit/withdraw with native token
- [ ] Implement assets trading with a temporary chain
  - [ ] Implement multi-owner creation in frontend
  - [ ] Implement application of atomic exchange
- [ ] Support author copilot
  - [ ] Integrate CoEDiT T5 model
  - [ ] Integrate stable diffusion model
  - [ ] Implement tokens buffer
  - [ ] Implement a synchronized tokens query
  - [ ] Support task list in frontend
  - [ ] Support text compare in frontend
- [ ] Implement cpregistry application
- [ ] Implement task/resource match
  - [ ] Implement resource capacity register
  - [ ] Implement resource state report
  - [ ] Implement resource rental work flow
  - [ ] Implement micro payment
  - [ ] Implement task / resource match
- [ ] Integrate rich text editor and media resource management
- [ ] New webui