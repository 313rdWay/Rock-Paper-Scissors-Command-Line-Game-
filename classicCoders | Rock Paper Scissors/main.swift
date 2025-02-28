//
//  main.swift
//  classicCoders | Rock Paper Scissors
//
//  Created by Davaughn Williams, Linda Swanson, Andrea Powell, Cameron Szabo  on 11/13/24.
//

import Foundation


//More Readable Variables
let rock = "r"
let paper = "p"
let scissors = "s"

//Computer Display Emoji
let r = "🪨"
let p = "🧻"
let s = "✂️"

var totalGames: Int = 3
var totalWins: Int = 0
var currentGame: Int = 1

var gameOver: Bool = false

// First time in, show instructions
showInstructions()
playRPSGame()

func showInstructions() {
    print("""
Welcome to the .classicCoders' "Rock Paper Scissors" command line app game. 
The rules of "Rock Paper Scissors" are:

🪨 (r)  Crushes ✂️ (s)
🧻 (p)  Wraps   🪨 (r)
✂️ (s)  Cuts    🧻 (p)

Instead of hand signals, enter "r", "p", or "s".
""")
}


func playRPSGame() {
    // Array
    let computerOptions: [String] = [rock, paper, scissors]
    
    while currentGame <= totalGames && !gameOver {
        print("\nROUND \(currentGame) of \(totalGames)")
        print("Rock.. Paper.. Scissors.. SHOOT! 🔫")
        if var input: String = readLine() {
            input = input.trimmingCharacters(in: .whitespacesAndNewlines)
            input = input.lowercased()
            
            // Computer's Choice Randomized
            let computerChoice:String = computerOptions.randomElement()!
            
            switch input {
            case rock:
                print("You chose...🪨.")
                switch computerChoice {
                case rock:
                    print("Computer chose...\(r).")
                    print("You TIED :| Enter a new choice.")
                    currentGame -= 1
                case paper:
                    print("Computer chose...\(p).")
                    print("You lost this round. 👎")
                case scissors:
                    print("Computer chose...\(s).")
                    print("You've won this round. 👍")
                    totalWins += 1
                default:
                    print("Computer Error, Check In Later")
                }
            case paper:
                print("You chose...🧻.")
                switch computerChoice {
                case rock:
                    print("Computer chose...\(r).")
                    print("You've won this round. 👍")
                    totalWins += 1
                case paper:
                    print("Computer chose...\(p).")
                    print("You TIED :| Enter a new choice.")
                    currentGame -= 1
                case scissors:
                    print("Computer chose...\(s).")
                    print("You lost this round. 👎")
                default:
                    print("Computer Error, Check In Later")
                }
            case scissors:
                print("You chose...✂️.")
                switch computerChoice {
                case rock:
                    print("Computer chose...\(r).")
                    print("You lost this round. 👎")
                case paper:
                    print("Computer chose...\(p).")
                    print("You've won this round. 👍")
                    totalWins += 1
                case scissors:
                    print("Computer chose...\(s).")
                    print("You TIED :| Enter a new choice.")
                    currentGame -= 1
                default:
                    print("Computer Error, Check In Later")
                }
            default:
                print("Please only enter r, p, or s.")
                currentGame -= 1
                //
            }
            
            if winningPercentage() > 0.5 {
                print("\nWINNING!!🎇")
                gameOver = true
            } else if computerWinningPercentage() > 0.5 {
                print("\nYOU GOT COOKED!! SUCKS TO SUCK!🍳")
                gameOver = true
                //print("Try me again...\n if you want to extend the game and think you can win!")
                
            }
            currentGame += 1
            
        } else { // For a nil value
            print("Please only enter r, p, or s. (nil)")
        }
        
    
    }
    // GAME OVER
    //print("You have won \(totalWins) of \(totalGames) rounds this game.")
    print("Continue playing? 🤷 Enter y/n")
    if var playAgain: String = readLine() {
        playAgain = playAgain.trimmingCharacters(in: .whitespacesAndNewlines)
        playAgain = playAgain.lowercased()
        
        if playAgain == "y" {
            totalGames += 2
            // print("Total Games: \(totalGames)")
            gameOver = false
            playRPSGame()
        }
        
        else {
            print("\nGAME OVER!")
        }
    }
}


func winningPercentage() -> Double {
    Double(totalWins) / Double(totalGames)
}

func computerWinningPercentage() -> Double {
    Double(currentGame - totalWins) / Double(totalGames)
}
