local json = require "json"


local teams = {
    ['blue'] = {
        players = {}
    },
    ['red'] = {
        players = {}
    },
}

local function createTeams(groups)
    for gName, group in pairs(groups) do
        for index, player in pairs(group.players) do
            if #teams['blue'].players < 5 then
                local playerData = {
                    id = player.id,
                    name = player.name,
                    group = gName
                }
                table.insert(teams['blue'].players, playerData)
            elseif #teams['red'].players < 5 then
                local playerData = {
                    id = player.id,
                    name = player.name,
                    group = gName
                }
                table.insert(teams['red'].players, playerData)
            end
        end
    end
end


local function printTeams(teams)
    for i, team in pairs(teams) do
        print("Time: " .. i)
        for _, player in pairs(team.players) do
            print("Id:" .. player.id)
            print("Nome:" .. player.name)
            print("Grupo:" .. player.group)
        end
    end
end


-- Chama a função para criar times
createTeams(Queue)

-- Chama a função para exibir os times formados
printTeams(teams)
