// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./EmteIdentity.sol";

contract EmteStore is EmteIdentity{

    struct VendorValidatior{
        string method;
        string validation_address;
        string validation_value;
    }

    struct Category{
        Category parent;
        string name;
    }

    struct Product{
        Category[] categories;
        string name;
        string image_url;
        uint price;
        bool on_sale;
    }

    struct Vendor{
        string brand_name;
        Wallet[] wallets;
        BankAccount[] bank_accounts;
        VendorValidatior[] validators;
        Category[] categories;
        Product[] products;
    }

}