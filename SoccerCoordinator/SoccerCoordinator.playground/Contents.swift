
// Individual Players Dictionaries
let player1: [String : Any] = [
    "name": "Joe Smith",
    "height": 42.0,
    "experience": true,
    "guardians": "Jim and Jan Smith"]

let player2: [String : Any] = [
    "name": "Jill Tanner",
    "height": 36.0,
    "experience": true,
    "guardians": "Clara Tanner"]

let player3: [String : Any] = [
    "name": "Bill Bon",
    "height": 43.0,
    "experience": true,
    "guardians": "Sara and Jenny Bon"]

let player4: [String : Any] = [
    "name": "Eva Gordon",
    "height": 45.0,
    "experience": false,
    "guardians": "Wendy and Mike Gordon"]

let player5: [String : Any] = [
    "name": "Matt Gill",
    "height": 40.0,
    "experience": false,
    "guardians": "Charles and Sylvia Gill"]

let player6: [String : Any] = [
    "name": "Kimmy Stein",
    "height": 41.0,
    "experience": false,
    "guardians": "Bill and Hillary Stein"]

let player7: [String : Any] = [
    "name": "Sammy Adams",
    "height": 45.0,
    "experience": false,
    "guardians": "Jeff Adams"]

let player8: [String : Any] = [
    "name": "Karl Saygan",
    "height": 42.0,
    "experience": true,
    "guardians": "Heather Bledsoe"]

let player9: [String : Any] = [
    "name": "Suzane Greenberg",
    "height": 44.0,
    "experience": true,
    "guardians": "Henrietta Dumas"]

let player10: [String : Any] = [
    "name": "Sal Dali",
    "height": 41.0,
    "experience": false,
    "guardians": "Gala Dali"]

let player11: [String : Any] = [
    "name": "Joe Kavalier",
    "height": 39.0,
    "experience": false,
    "guardians": "Sam and Elaine Kavalier"]

let player12: [String : Any] = [
    "name": "Ben Finkelstein",
    "height": 44.0,
    "experience": false,
    "guardians": "Aaron and Jill Finkelstein"]

let player13: [String : Any] = [
    "name": "Diego Soto",
    "height": 41.0,
    "experience": true,
    "guardians": "Robin and Sarika Soto"]

let player14: [String : Any] = [
    "name": "Chloe Alaska",
    "height": 47.0,
    "experience": false,
    "guardians": "David and Jamie Alaska"]

let player15: [String : Any] = [
    "name": "Arnold Willis",
    "height": 43.0,
    "experience": false,
    "guardians": "Claire Willis"]

let player16: [String : Any] = [
    "name": "Phillip Helm",
    "height": 44.0,
    "experience": true,
    "guardians": "Thomas Helm and Eva Jones"]

let player17: [String : Any] = [
    "name": "Les Clay",
    "height": 42.0,
    "experience": true,
    "guardians": "Wynonna Brown"]

let player18: [String : Any] = [
    "name": "Herschel Krustofski",
    "height": 45.0,
    "experience": true,
    "guardians": "Hyman and Rachel Krustofski"]


//verge height variables
var dragonsAverageHeight: Double = 0
var sharksAverageHeight: Double = 0
var raptorsAverageHeight: Double = 0
var allTeamsAverageHeight: Double = 0



// All Players Array
var allPlayers = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]



// Sort Players by Experience
var experiencedPlayers: [[String: Any]] = []
var unexperiencedPlayers: [[String: Any]] = []


// Create The Teams
var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


// sorting players into teams
for player in allPlayers {
    if let experienceLevel = player["experience"] as? Bool {
    if experienceLevel == true {
        experiencedPlayers.append(player)
    }     else {
        unexperiencedPlayers.append(player)
    }
}
}

// assinging expireanced players to teams
for player in experiencedPlayers {
    if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count
        &&
        // add height into the if statement
        dragonsAverageHeight <= allTeamsAverageHeight
    {
        teamDragons.append(player)
    }
    else if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count
        &&
        // add height into the if statement
        sharksAverageHeight <= allTeamsAverageHeight
    {
        teamSharks.append(player)
    }
    else if teamRaptors.count <= teamDragons.count && teamRaptors.count <= teamSharks.count
        &&
        // add height into the if statement
        raptorsAverageHeight <= allTeamsAverageHeight
    {
        teamRaptors.append(player)
    }
}


//assign unexperienced players to teams

for player in unexperiencedPlayers {
    if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count
        &&
        // add height into the if statement
        dragonsAverageHeight <= allTeamsAverageHeight
    {
        teamDragons.append(player)
    }
    else if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count
        &&
        // add height into if statement
        sharksAverageHeight <= allTeamsAverageHeight
    {
        teamSharks.append(player)
    }
    else if teamRaptors.count <= teamDragons.count && teamRaptors.count <= teamSharks.count
        &&
        // add height into  if statement
        raptorsAverageHeight <= allTeamsAverageHeight
    {
        teamRaptors.append(player)
    }
}



//  function to calculate average height
func callculateAverageHeight(ofTeam teamToCalculate: [[String: Any]]) -> Double {
    let playerCount = Double(teamToCalculate.count)
    var totalHeight: Double = 0.0
    var averageHeight: Double = 0.0
    
    for player in teamToCalculate{
        if let  playerHeight = player["height"] as? Double
        {
        totalHeight = totalHeight + playerHeight
        averageHeight = totalHeight / playerCount
        }
    }
    return averageHeight
}
// end of function

allTeamsAverageHeight = callculateAverageHeight(ofTeam: allPlayers)
dragonsAverageHeight = callculateAverageHeight(ofTeam: teamDragons)
sharksAverageHeight = callculateAverageHeight(ofTeam: teamSharks)
raptorsAverageHeight = callculateAverageHeight(ofTeam: teamRaptors)


//print letters to guardians
//var dragonsLetter: [String : Any] = []
//var raptorsLetter: [String : Any] = []
//var sharksLetter: [String : Any] = []

///populate letters array with letters strings
var letters:[String] = []

for players in teamDragons{
    var guardiansName: String  =  ""
    var playersName: String  =  ""
    if let nameOfPlayer = players["name"]as? String{
        playersName = nameOfPlayer }
    if let guardianOf = players["guardians"]as? String{
        guardiansName = guardianOf }
    letters.append ( ("Hi \(guardiansName),\n\(playersName) is on the Dragons Team and Next Practice is on March 17th, at 1 p.m.\n") )
    
}

for players in teamSharks{
    var guardiansName: String  =  ""
    var playersName: String  =  ""
    if let nameOfPlayer = players["name"]as? String{
        playersName = nameOfPlayer }
    if let guardianOf = players["guardians"]as? String{
        guardiansName = guardianOf }
   letters.append( ("Hi \(guardiansName),\n\(playersName) is on the Sharks Team and Next Practice is on March 17th, at 3p.m.\n"))
}

for players in teamRaptors{
    var guardiansName: String  =  ""
    var playersName: String  =  ""
    if let nameOfPlayer = players["name"]as? String{
        playersName = nameOfPlayer }
    if let guardianOf = players["guardians"]as? String{
        guardiansName = guardianOf }
   letters.append( ("Hi \(guardiansName),\n\(playersName), is on the Raptors Team and Next Practice is on March 18th, at 1 p.m.\n"))
}


//print all letters
for letter in 0..<letters.count {
    print(letters[letter])
}

//print teams breakdown with average height for reference
print ("\nTEAM RAPTORS --- Number of players: \(teamRaptors.count)    average height: \(raptorsAverageHeight)")
print ("TEAM SHARKS  --- Number of players: \(teamSharks.count)    average height: \(sharksAverageHeight)")
print ("TEAM DRAGONS --- Number of players: \(teamDragons.count)    average height: \(dragonsAverageHeight)")

