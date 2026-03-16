// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PollStation{

    string[] public candidateNames;
    mapping(string => uint256) voteCount;

    function addCandidateNames(string memory _candidateNames) public{
    // 增加候选人，需要gas
        candidateNames.push(_candidateNames);
        voteCount[_candidateNames] = 0;
    }
    
    function getcandidateNames() public view returns (string[] memory){
    // 获取候选人列表，free gas
        return candidateNames;
    }

    function vote(string memory _candidateNames) public{
    // 投票
        voteCount[_candidateNames] += 1;
    }

    function getVote(string memory _candidateNames) public view returns (uint256){
    // 获取投票结果，free gas
        return voteCount[_candidateNames];
    }

}