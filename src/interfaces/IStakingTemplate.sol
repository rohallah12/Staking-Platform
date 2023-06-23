//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// https://docs.synthetix.io/contracts/source/interfaces/istakingrewards
interface IStakingTemplate {
    function balanceOf(address account) external view returns (uint256);
    function earned(address account) external view returns (uint256);
    function getRewardForDuration() external view returns (uint256);
    function lastTimeRewardApplicable() external view returns (uint256);
    function rewardPerToken() external view returns (uint256);
    function rewardsDistributor() external view returns (address);
    function rewardToken() external view returns (IERC20);
    function totalSupply() external view returns (uint256);
    function withdrawAndClaim() external;
    function claimReward() external;
    function stake(uint256 amount) external;
    function withdraw(uint256 amount) external;
}
