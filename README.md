# Moonwell Subgraph

[Moonwell](https://moonwell.fi/) is an open lending and borrowing DeFi protocol on Moonbeam and Moonriver. This Subgraph ingests the contracts of the protocol.

## Networks and Performance

This subgraph can be found on The Graph Hosted Service at https://thegraph.com/hosted-service/subgraph/moonwell-fi/moonwell.

You can also run this subgraph locally, if you wish. Instructions for that can be found in [The Graph Documentation](https://thegraph.com/docs/quick-start).

### ABI

The ABI used is `ctoken.json`. It is a stripped down version of the full abi provided by Moonwell, that satisfies the calls we need to make for both mMOVR and mERC20 contracts. This way we can use 1 ABI file, and one mapping for mMOVR and mERC20.

## Getting started with querying

Below are a few ways to show how to query the Moonwell Subgraph for data. The queries show most of the information that is queryable, but there are many other filtering options that can be used, just check out the [querying api](https://github.com/graphprotocol/graph-node/blob/master/docs/graphql-api.md).

You can also see the saved queries on the hosted service for examples.

## Development

The subgraph is under major refactor in `dev` branch.
