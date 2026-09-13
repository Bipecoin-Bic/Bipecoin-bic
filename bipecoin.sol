// ==========================================================
//  BIPECOIN - BIC CHAIN - LAYER 1 FOUNDATION
//  Name: Bipecoin  |  Symbol: BIC
//  Standard: ERC-20 / BEP-20  |  Decimals: 18
//  Total Supply: 5,000,000,000 (5 Billion)
//  Chain Type: Layer 1 - Foundation Blockchain
//  Special: AI-Ready - Fungible Token Standard - Core Network
//  © 2026 - Built with purpose & vision
// ==========================================================
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Bipecoin is ERC20 {

    // ========== IDENTITY ==========
    string public constant OFFICIAL_NAME = "Bipecoin";
    string public constant OFFICIAL_SYMBOL = "BIC";
    string public constant CHAIN_IDENTITY = "BIC Chain";
    string public constant LAYER_CLASS = "Layer 1 - Foundation Blockchain";

    // ========== CORE PURPOSE ==========
    string public constant PURPOSE = 
        "Foundational Layer 1 blockchain - trust, value, intelligence, innovation.";

    // ========== 5 CORE DUTIES (Concise - Full meaning preserved) ==========
    string public constant DUTY1 = 
        "LAYER1: Primary settlement & security layer. Immutable transactions, network consensus.";
    string public constant DUTY2 = 
        "AI: Oracle-ready, verifiable computation, automation. Intelligence + integrity.";
    string public constant DUTY3 = 
        "FUNGIBLE: Equal, divisible, transferable. Universal value standard. 18 decimals.";
    string public constant DUTY4 = 
        "TRUST: Open-source, auditable, immutable. No backdoors. Community governed.";
    string public constant DUTY5 = 
        "ECOSYSTEM: Native gas & reserve asset. Powering all apps, tokens, services.";

    // ========== SUPPLY ==========
    uint256 public constant DECIMALS = 18;
    uint256 public constant MAX_SUPPLY = 5_000_000_000 * 10 ** DECIMALS;
    string public constant SUPPLY_INFO = "Fixed 5B. No further minting.";

    // ========== CONSTRUCTOR ==========
    constructor() ERC20("Bipecoin", "BIC") {
        _mint(msg.sender, MAX_SUPPLY);
    }

    // ========== PUBLIC INFO ==========
    function getInfo() public view returns (
        string memory name_,
        string memory symbol_,
        string memory chain_,
        string memory layer_,
        uint256 supply_,
        string memory purpose_
    ) {
        return (OFFICIAL_NAME, OFFICIAL_SYMBOL, CHAIN_IDENTITY, LAYER_CLASS, totalSupply(), PURPOSE);
    }

    function getDuties() public pure returns (string[5] memory) {
        return [DUTY1, DUTY2, DUTY3, DUTY4, DUTY5];
    }
}
