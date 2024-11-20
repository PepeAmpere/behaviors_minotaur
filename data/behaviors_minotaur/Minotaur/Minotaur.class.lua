return {
    Minotaur = {
        description = 'An extension to Infantryman. Ancient Greek hero.',
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
                            -- string.match(soldier:GetClassName(), "ru_army")
                            bb.name == "Minotaur"
                        )
                    then
                        return true
                    end
            end        
            return false
        end,

        behaviors = {
            Advance = {
                description = 'Advance',
                tree = 'Advance',
                parameters = {
                    destination = {
                        description = "Target position.",
                        validate = standard_behaviors.IsOfTypeFn("Vec3"),
                        mandatory = true,
                    },
                }, -- here is supposed to be 
            },
            Idle = {
                description = 'Idle',
                tree = 'Patrol',
                parameters = {},
            },
            Patrol = {
                description = 'Patrol',
                tree = 'Patrol',
                parameters = {},
            }
        },
    },
}