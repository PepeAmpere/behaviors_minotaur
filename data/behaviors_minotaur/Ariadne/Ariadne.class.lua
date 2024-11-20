return {
    Ariadne = {
        description = 'An extension to Infantryman. Half-sister of Minotaur',
        parents = {
            { btset = 'standard_behaviors', class = 'Infantryman' },
            -- More parent classes can be added. The 'btset' field is optional and defaults to the current project.
        },
        
        Match = function ()
        -- This class matches the same objects as the parent class does.
        -- You can add a condition matching only subset of soldiers.
            if
                type(self) == "EntityBrain"
            then
                local soldier = self
                    if 
                        soldier:Valid() and 
                        soldier:IsAlive() and
                        soldier:GetType() == EntityType.Person and
                        (
                            bb.name == "Ariadne"
                        )
                    then
                        return true
                    end
            end        
            return false
        end,

        behaviors = {
            Idle = {
                description = 'Idle',
                tree = 'Observe',
                parameters = {},
            },
            Observe = {
                description = 'Observe',
                tree = 'Observe',
                parameters = {},
            }
        },
    },
}