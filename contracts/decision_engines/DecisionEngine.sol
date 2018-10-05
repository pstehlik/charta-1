/*

  Copyright 2017 Dharma Labs Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity 0.4.18;


interface DecisionEngine {
    function evaluateConsensuality(
        bytes32[] memory decisionEngineParams,
        bytes32[] signaturesR,
        bytes32[] signaturesS,
        uint8[] signaturesV
    ) public view returns (bool _success, bytes32 _id);

    function evaluateDecision(
        bytes32[] memory decisionEngineParams,
        address[6] orderAddresses, // repayment-router, debtor, uw, tc, p-token, relayer
        uint[8] orderValues, // rr, salt, pa, uwFee, rFee, cFee, dFee, expTime
        bytes32[1] orderBytes32 // tcParams
    ) public view returns (bool _success);

    function getIdentifier(
        bytes32[] memory decisionEngineParams
    ) public pure returns (bytes32 _id);
}