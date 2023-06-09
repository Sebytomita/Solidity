from pickle import NONE
from brownie import (
    network,
    config,
    accounts,
)

LOCAL_BLOCKCHAIN_ENVIRONMENTS = [
    "development",
    "local-ganache",
    "ganache",
    "hardhat",
    "mainnet-fork",
]


def get_account(index=None, id=None):
    if index:
        return accounts[index]
    if network.show_active() in LOCAL_BLOCKCHAIN_ENVIRONMENTS:
        return accounts[0]
    if id:
        return accounts.load(id)
    if network.show_active() in config["networks"]:
        return accounts.add(config["wallets"]["from_key"])
    return None
