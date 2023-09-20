local teams = {
    ['blue'] = {
        players = {}
    },
    ['red'] = {
        players = {}
    },
}

local function createTeams(groups)
    for index, team in pairs(teams) do
        local players = #teams[index].players < 5
        while players do
            print(players)
            for gName, group in ipairs(groups) do
                if 5 - #teams[index].players >= #group.players then
                    for _, player in ipairs(group.players) do
                        local playerData = {
                            id = player.id,
                            name = player.name,
                            group = gName
                        }
                        table.insert(teams[index].players, playerData)
                        table.remove(groups[gName].players, 1)
                    end
                end
            end
            players = #teams[index].players < 5
        end
    end

    -- for gName, group in pairs(groups) do
    --     for i, team in pairs(teams) do
    --         if 5 - #team.players >= #group.players then
    --             for index, player in pairs(group.players) do
    --                 local playerData = {
    --                     id = player.id,
    --                     name = player.name,
    --                     group = gName
    --                 }
    --                 table.insert(teams[i].players, playerData)
    --                 table.remove(group.players, index)
    --             end
    --         end
    --     end
    -- end
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


createTeams(Queue)

printTeams(teams)
