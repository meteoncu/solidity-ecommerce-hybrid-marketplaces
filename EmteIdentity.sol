// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./EmtePayment.sol";

contract EmteIdentity {

    struct User{
        string name;
        string md5_password;
        string email;
        Wallet[] wallets;
        BankAccount[] bank_accounts;
    }

    struct VendorValidatior{
        string method;
        string validation_address;
        string validation_value;

    }

    struct Vendor{
        User user;
        string brand_name;
        address wallet_public_key;
        VendorValidatior[] validators;
    }


    struct Product{
        Vendor vendor;
        string name;
        string image_url;
        uint price;
        bool on_sale;

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

}