// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

interface ICycleVaultxJOE {
    function balancexJOE() external view returns (uint256);
    function balancexJOEinMasterChef() external view returns (uint256 amount);
    function balancexJOEinSystem() external view returns (uint256);
    function balanceLPinSystem() external view returns (uint256); // Standard interface
    function balanceJOE() external view returns (uint256);
    function accountShareBalance(address account) external view returns (uint256);
    function getxJOEamountForShares(uint256 shares) external view returns (uint256);
    function getLPamountForShares(uint256 shares) external view returns (uint256); // Standard interface
    function xJOEtoJOE(uint256 amountxJOE) external view returns (uint256 amountJOE);
    function getAVAXquoteForxJOEamount(uint256 amountxJOE) external view returns (uint256 amountAVAX);
    function getAVAXquoteForLPamount(uint256 amountLP) external view returns (uint256); // Standard interface
    function getAVAXamountForxJOEamount(uint256 amountxJOE) external view returns (uint256 amountAVAX);
    function getAVAXamountForLPamount(uint256 amountLP) external view returns (uint256); // Standard interface
    function getRewardsEarned() external view returns (uint256);
    // Deposit
    function depositAVAX() external payable;
    function depositxJOE(uint256 amountxJOE) external;
    function depositLP(uint256 amount) external; // Standard interface
    // Withdraw
    function withdrawAVAX(uint256 sharesToWithdraw) external;
    function withdrawxJOE(uint256 sharesToWithdraw) external;
    function withdrawLP(uint256 sharesToWithdraw) external; // Standard interface
    // Reinvest
    function reinvest() external;
    function harvest() external; // Standard interface
}
