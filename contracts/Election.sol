pragma solidity ^0.4.15;

contract Election {
    // Model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // Store Candidates Count
    // This is handy because theres no .length in solidity
    uint public candidatesCount;

    // Constructer
   function Election () public {
       addCandidate("Candidate 1");
       addCandidate("Candidate 2");
   }

   function addCandidate (string _name) private {
       candidatesCount ++;
       candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
   }
}