// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./EmteIdentity.sol";

contract EmtePayment is EmteIdentity{

    struct Wallet{
        string title;
        address public_key;
    }

    struct PaymentByCoin{
        string coin_type;
        Wallet sender_wallet;
        Wallet receiver_wallet;
        uint amount;
        address transfer_validation_hash;
        bool is_validated;
        uint256 created_at;
    }

    struct BankAccount{
        string full_name;
        string iban;
    }

    struct PaymentByCreditCard{
        BankAccount sender_account;
        BankAccount receiver_account;
        uint amount;
        bool is_validated;
        uint256 created_at;
    }

    struct Validation{
        string request_url;
        string request_method;
        string request_headers;
        string valid_regex_pattern;
    }

    struct PaymentByOtherMethod{
        string method_name;
        string sender_identifier;
        string receiver_identifier;
        Validation validation;
        uint amount;
        bool is_validated;
        uint256 created_at;
    }

    struct Order{
        Vendor vendor;
        User buyer;
        OrderLine[] lines;
        OrderPackage[] packages;
        OrderStatus[] statuses;
        PaymentByCoin[] payments_by_coin;
        PaymentByCreditCard[] payments_by_credit_card;
        PaymentByOtherMethod[] payments_by_other_method;
        bool is_paid;
        uint256 created_at;
    }

}