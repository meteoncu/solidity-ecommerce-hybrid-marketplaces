// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./EmteIdentity.sol";

contract EmteEcommerce is EmteIdentity{
    string[] statuses = ["Order received", "Approved by seller", "Rejected by seller", "Preparing", "Shipped", "Cancelled"];
    string[] payment_types = ["Order Purchase", "Order Refund", "Partial Refund", "Gas Fee Refund"];

    struct ShippingAddress{
        string first_name;
        string last_name;
        string country;
        string province;
        string district;
        string zip_code;
        string full_address;
    }

    struct InvoiceAddress{
        string first_name;
        string last_name;
        string country;
        string province;
        string district;
        string zip_code;
        string full_address;
        string identity_number;
    }

    struct OrderLine{
        bool is_packaged;
        bool is_cancelled;
    }

    struct OrderPackage{
        ShippingAddress shipping_address;
        OrderLine[] lines;
        uint256 created_at;
    }

    struct OrderStatus{
        uint status_code;
        uint256 created_at;
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