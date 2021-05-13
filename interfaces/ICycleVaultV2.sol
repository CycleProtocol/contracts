// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

interface ICycleVaultV2 {
    // Balance helpers
    function balanceLPinVault() external view returns (uint256);
    function balanceLPinSystem() external view returns (uint256);
    function accountShareBalance() external view returns (uint256);
    function getAccountLP() external view returns (uint256);
    function getAVAXamountForAccountLP() external view returns (uint256);
    function getLPamountForShares(uint256 shares) external view returns (uint256);
    function getAVAXamountForLPamount(uint256 amountLP) external view returns (uint256);
    function getAVAXquoteForLPamount(uint256 amountLP) external view returns (uint256);
    // Account access functions
    function depositAVAX() external payable;
    function depositLP(uint256 amount) external;
    function withdrawAVAX(uint256 sharesToWithdraw) external;
    function withdrawLP(uint256 sharesToWithdraw) external;
}
