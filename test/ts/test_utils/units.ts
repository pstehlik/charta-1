import * as Web3 from "web3";
import {BigNumber} from "bignumber.js";

export function ether(amount: number): BigNumber {
    const weiString = web3.toWei(amount, 'ether');
    return new BigNumber(weiString);
}

export function percent(amount: number): BigNumber {
    const weiString = web3.toWei(amount / 100, 'ether');
    return new BigNumber(weiString);
}
