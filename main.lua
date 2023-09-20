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
        -- while #teams[index].players < 5 do
        while #teams[index].players < 5 do
            for gName, group in pairs(groups) do
                if #group.players <= (5 - #teams[index].players) then
                    for i, player in pairs(groups[gName].players) do
                        local playerData = {
                            id = player.id,
                            name = player.name,
                            group = gName
                        }
                        table.insert(teams[index].players, playerData)
                        groups[gName].players[i] = nil
                    end
                end
            end
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
