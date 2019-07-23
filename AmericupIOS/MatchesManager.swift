
//
//  MatchesManager.swift
//  Americup
//
//  Created by Enfasis on 7/13/19.
//  Copyright © 2019 Santiago. All rights reserved.
//

import Foundation
import UIKit

//Class to handle operations over the books collection
class MatchesManager {
    
    //Store the books collection
    private lazy var matches:[Match] = self.loadMatches()
    //Store the number of books in the collection
    var matchCount:Int {return matches.count}
    
    //Get a book from the collection at a specific position
    func getMatch(at index:Int)->Match {
        return matches[index]
    }
    
    //Return the books collection
    private func loadMatches()->[Match] {
        //for now, loads a dummy hard-coded books collection
        return sampleMatches()
    }
    
    //Add a book to the collection
    func addMatch(_ match:Match) {
        matches.append(match)
    }
    
    //Return a dummny collection of books according to Book structure
    private func sampleMatches()->[Match] {
        return [
            Match(equipo1: "Col", equipo2: "Bra", score1: "2", score2: "4"),
            Match(equipo1: "Chi", equipo2: "Qat", score1: "1", score2: "0"),
            Match(equipo1: "Col", equipo2: "Bra", score1: "2", score2: "4"),
            //More items
        ]
    }
}
