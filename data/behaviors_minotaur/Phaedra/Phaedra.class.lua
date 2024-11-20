return {
    Phaedra = {
        description = 'An extension to Infantryman. Younger sister of Ariadne and future wife of Theseus',
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
                            bb.name == "Phaedra"
                        )
                    then
                        return true
                    end
            end        
            return false
        end,

        behaviors = {
            Follow = {
                description = 'Follow',
                tree = 'Follow',
                parameters = {
                    followedEntity = {
                        description = "The entity to follow.",
                        validate = standard_behaviors.IsOfTypeFn("Entity"),
                        mandatory = true,
                    },
                },
            },
            Idle = {
                description = 'Idle',
                tree = 'Listen',
                parameters = {},
            },
            Listen = {
                description = 'Listen',
                tree = 'Listen',
                parameters = {},
            },
        },
    },
}