from scripts.helpful_scripts import get_account, OPENSEA_URL
from brownie import AdvancedCollectible


def deploy_and_create():
  account = get_account()
  # We want to be able to use the deployed contracts if we are on a testnet
  # Otherwise, we want to deploy some mocks and use those 
  # Rinkeby
  advanced_collectible = AdvancedCollectible.deploy({"from": account})
  

def main():
  deploy_and_create()