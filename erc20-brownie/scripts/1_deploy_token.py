from brownie import OurToken
from scripts.helpful_scripts import get_account
from web3 import Web3

initial_suply = Web3.toWei(1000, "ether")


def main():
    account = get_account()
    our_token = OurToken.deploy(initial_suply, {"from": account})
    print(our_token.name())
