## WHY I EXIST

I am a tool to help you pick the fairest teams for your game

## HOW TO INSTALL ME

    gem install football-manager

## HOW TO USE ME

1) Create a file with all your available players, including their names and skill level (1-9)

e.g. players.txt

    Alan, 5
    Paul, 3
    Jeff, 4
    Tom, 2
    Steve B, 4
    Steve T, 4

2) Run me from the command line

    football-manager -f players.txt

3) Two fair teams should now be output

    Team Bibs have 3 players and 11 points
    Team Colours have 3 player and 11 points

    Team Bibs
    --------
    Alan
    Steve T
    Tom

    Team Colours
    --------
    Jeff
    Paul
    Steve B

I will randomise the teams to the best of my algorithmic ability!
