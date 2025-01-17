// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import {IStrategy} from "@tokenized-strategy/interfaces/IStrategy.sol";
import {ISolidlySwapper} from "@periphery/swappers/interfaces/ISolidlySwapper.sol";
import {IHealthCheck} from "@periphery/HealthCheck/IHealthCheck.sol";

interface IStrategyInterface is IStrategy, ISolidlySwapper, IHealthCheck {
    function setStable(address _token0, address _token1, bool _Stable) external;

    function setMinAmountToSell(uint256 _minAmountToSell) external;

    function setProfitLimitRatio(uint256 _profitLimitRatio) external;

    // Set the max loss the healthcheck should allow
    function setLossLimitRatio(uint256 _lossLimitRatio) external;

    // Set if the strategy should do the healthcheck.
    function setDoHealthCheck(bool _doHealthCheck) external;
}
