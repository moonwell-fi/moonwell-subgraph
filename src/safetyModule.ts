import { Account2, SafetyModule } from '../generated/schema'
import {
  SafetyModule as SafetyModuleContract,
  AssetConfigUpdated,
  AssetIndexUpdated,
  UserIndexUpdated,
  RewardsAccrued,
  RewardsClaimed,
  Staked,
  Redeem,
  Cooldown,
} from '../generated/SafetyModule/SafetyModule'
import { safetyModuleAddr } from './constants'
import { Address, log } from '@graphprotocol/graph-ts'
import { zeroBI } from './helpers'

export function handleAssetConfigUpdated(event: AssetConfigUpdated): void {
  let safetyModule = getOrCreateSafetyModule()
  safetyModule.emissionPerSecond = event.params.emission
  safetyModule.save()
}

export function handleAssetIndexUpdated(event: AssetIndexUpdated): void {
  let safetyModule = getOrCreateSafetyModule()
  safetyModule.globalIndex = event.params.index
  safetyModule.lastUpdateTimestamp = event.block.timestamp
  safetyModule.save()
}

export function handleUserIndexUpdated(event: UserIndexUpdated): void {
  let accountID = event.params.user.toHexString()
  let account2 = Account2.load(accountID)
  if (!account2) {
    log.warning('[handleUserIndexUpdated] account2 {} not found', [accountID])
    return
  }
  account2.userStakingIndex = event.params.index
  account2.save()
}

export function handlerRewardsAccrued(event: RewardsAccrued): void {
  let accountID = event.params.user.toHexString()
  let account2 = Account2.load(accountID)
  if (!account2) {
    log.warning('[handlerRewardsAccrued] account2 {} not found', [accountID])
    return
  }
  account2.stakerRewardsToClaim = account2.stakerRewardsToClaim.plus(event.params.amount)
  account2.save()

  let contract = SafetyModuleContract.bind(Address.fromString(safetyModuleAddr))
  let balanceResult = contract.try_balanceOf(Address.fromString(accountID))
  if (balanceResult.reverted) {
    log.warning('[handlerRewardsAccrued] try_balanceOf({}) on {} reverted', [
      accountID,
      safetyModuleAddr,
    ])
    return
  }
  account2.safetyModuleTokenBalance = balanceResult.value
  account2.save()

  let safetyModule = getOrCreateSafetyModule()
  let totalSupplyResult = contract.try_totalSupply()
  if (totalSupplyResult.reverted) {
    log.warning('[handlerRewardsAccrued] try_totalSupply on {} reverted', [
      safetyModuleAddr,
    ])
    return
  }
  safetyModule.totalSupply = totalSupplyResult.value
  safetyModule.save()
}

export function handleRewardsClaimed(event: RewardsClaimed): void {
  let accountID = event.params.from.toHexString()
  let account2 = Account2.load(accountID)
  if (!account2) {
    log.warning('[handleRewardsClaimed] account2 {} not found', [accountID])
    return
  }
  account2.stakerRewardsToClaim = account2.stakerRewardsToClaim.minus(event.params.amount)
  account2.save()
}

export function handleStaked(event: Staked): void {
  updateStakerCooldown(event.params.onBehalfOf.toHexString())
}

export function handleRedeem(event: Redeem): void {
  updateStakerCooldown(event.params.from.toHexString())
}

export function handleCooldown(event: Cooldown): void {
  updateStakerCooldown(event.params.user.toHexString())
}

function getOrCreateSafetyModule(): SafetyModule {
  let safetyModule = SafetyModule.load('1')
  if (!safetyModule) {
    safetyModule = new SafetyModule('1')
    let contract = SafetyModuleContract.bind(Address.fromString(safetyModuleAddr))

    let cooldownSecondsResult = contract.try_COOLDOWN_SECONDS()
    if (cooldownSecondsResult.reverted) {
      log.warning('[getOrCreateSafetyModule] try_COOLDOWN_SECONDS() on {} reverted', [
        safetyModuleAddr,
      ])
    } else {
      safetyModule.cooldownSeconds = cooldownSecondsResult.value
    }

    let unstakeWindowResult = contract.try_UNSTAKE_WINDOW()
    if (unstakeWindowResult.reverted) {
      log.warning('[getOrCreateSafetyModule] try_UNSTAKE_WINDOW() on {} reverted', [
        safetyModuleAddr,
      ])
    } else {
      safetyModule.unstakeWindow = unstakeWindowResult.value
    }

    let distributionEndResult = contract.try_DISTRIBUTION_END()
    if (distributionEndResult.reverted) {
      log.warning('[getOrCreateSafetyModule] try_DISTRIBUTION_END() on {} reverted', [
        safetyModuleAddr,
      ])
    } else {
      safetyModule.distributionEnd = distributionEndResult.value
    }

    safetyModule.totalSupply = zeroBI
    safetyModule.emissionPerSecond = zeroBI
    safetyModule.lastUpdateTimestamp = zeroBI
    safetyModule.globalIndex = zeroBI
    safetyModule.save()
  }
  return safetyModule
}

function updateStakerCooldown(accountID: string): void {
  let account2 = Account2.load(accountID)
  if (!account2) {
    log.warning('[handleStaked] account2 {} not found', [accountID])
    return
  }

  let contract = SafetyModuleContract.bind(Address.fromString(safetyModuleAddr))
  let stakersCooldownResult = contract.try_stakersCooldowns(Address.fromString(accountID))
  if (stakersCooldownResult.reverted) {
    log.warning('[updateStakerCooldown] try_stakersCooldowns({}) on {} reverted', [
      accountID,
      safetyModuleAddr,
    ])
    return
  }
  account2.stakersCooldown = stakersCooldownResult.value
  account2.save()
}
