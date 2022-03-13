//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {DataTypes} from '../libraries/DataTypes.sol';

interface ITreasury {
    function updateShareSplit(DataTypes.ShareSplit memory _shareSplit) external;

    function vestingShare(uint256[] calldata tokenId, uint8[] calldata shareRatio) external;

    function updateInvestmentSettings(DataTypes.InvestmentSettings memory settings) external;

    function invest() external payable;

    function investInERC20(address token) external;

    function hasModule(address module) external view returns (bool);

    function listModules() external view returns (address[] memory);

    function signupModule(address module) external;

    function removeModule(address module) external;
}
