return {
    Minotaur = {

        description = "Minotaur",
        simpleClass = true,
        parents = {
            "Base"
        },

        Match = function()
            if 
                type(self) == "EntityBrain"
            then
                local soldier = self
                if 
                    soldier:Valid() and 
                    soldier:IsAlive() and
                    soldier:GetType() == EntityType.Person and
                    (
                        string.match(soldier:GetClassName(), "ru_army")
                    )
                then
                    return true
                end
            end
            return false
        end,

        behaviors = {

            Advance = {tree = 'Advance'},
            Patrol = {tree = 'Patrol'},
            Idle = {tree = 'Patrol'},

        },
    },
}