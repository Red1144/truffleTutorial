# truffleTutorial
I am studying truffle.


# Truffle Quickstart
Link : https://truffleframework.com/docs/getting_started/project

0. install

        npm install -g truffle


1. try

        mkdir MetaCoin && cd MetaCoin
        truffle unbox metacoin
    (there are many other Truffle Boxes. Check this link https://truffleframework.com/boxes )

2. install ganache

        https://truffleframework.com/ganache

    download and install it.

3. configure for truffle.js

    modify truffle.js with below

        module.exports = {
            networks: {
                development: {
                    host: "127.0.0.1",
                    port: 7545,
                    network_id: "*"
                }
            }
        };

4. test

    4.1. solidity test

        truffle test ./test/TestMetacoin.sol

    4.2. javascript test

        truffle test ./test/metacoin.js

5. compiling

        truffle compile

    If it worked, you can see "build" folder.

6. migrate

        truffle migrate

7. interact with the contract

        truffle console


# Practice1

You can see an example of Uint Array add/get/getLength/getArray.

Check source below Practice1.


# Practice2

You can see an example of Bytes32 Array add/get/getLength/getArray.

Check source below Practice2.


# Next Trial
https://truffleframework.com/docs/getting_started/installation

https://truffleframework.com/tutorials
https://truffleframework.com/tutorials/using-infura-custom-provider
https://truffleframework.com/tutorials/deploying-to-the-live-network
https://truffleframework.com/tutorials/how-to-install-truffle-and-testrpc-on-windows-for-blockchain-development
