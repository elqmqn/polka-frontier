# Polka Frontier (PFR) — testnet token

This is an experimental token for the Polka Frontier game prototype. It is **not a launched mainnet token**, has no promised market value, and must not be advertised as an investment or a source of earnings.

## Contract design

- Name: Polka Frontier
- Symbol: PFR
- Decimals: 18 (standard ERC-20)
- Initial and maximum supply: 1,000,000,000 PFR
- Entire initial supply is minted once to the deploying wallet.
- No owner-only mint function, taxes, blacklist, or transfer restrictions.
- The contract does not distribute gameplay rewards automatically.

## Deploy safely to Polkadot Hub TestNet

1. Open the official Polkadot Hub docs and confirm the current testnet network settings and RPC details: https://docs.polkadot.com/smart-contracts/connect/
2. Use Remix only via its official site: https://remix.ethereum.org/
3. Create `FrontierToken.sol` and paste the contract from `contracts/FrontierToken.sol`.
4. In Remix, compile with Solidity 0.8.20 or a compatible 0.8.x compiler. Enable the OpenZeppelin Contracts import by allowing Remix to resolve `@openzeppelin/contracts`.
5. In Deploy & Run Transactions, choose **Injected Provider** and connect a dedicated test wallet with an EVM-compatible account. Check that the wallet is on Polkadot Hub TestNet before deploying.
6. Get test PAS only from an official faucet linked by the current Polkadot documentation. Test PAS is not real money.
7. Deploy `FrontierToken`. Confirm the deployment in the wallet. The constructor assigns all 1 billion PFR to the deployer.
8. Copy the deployed contract address and verify the contract on the testnet explorer if verification is available.
9. To test the balance, import the token contract address into the wallet using symbol PFR and 18 decimals.

## Safety checklist

- Never paste a seed phrase or private key into Remix, GitHub, or this game.
- Never deploy this test contract to mainnet as a production token.
- Never send real funds to a testnet contract.
- A testnet token is not evidence of a future airdrop, exchange listing, redemption, or value.
- The game must not award on-chain tokens based solely on browser-local achievements; local saves can be edited. Reward claims need server-side verification or an appropriately designed on-chain verification mechanism.
- Before any mainnet deployment, review legal obligations, security, token distribution, contract verification, and independent auditing.

## Current status

The Solidity source is provided for review and testnet deployment. **No contract has been deployed by this repository change**, and no token address exists until you deploy it from your own wallet.
