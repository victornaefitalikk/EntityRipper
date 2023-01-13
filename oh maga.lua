local Spawner = loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/DoorEntitySpawn%2BSource'))()


-- Create entity
local entity = Spawner.createEntity({
    CustomName = "B-60", -- Custom name of your entity
    Model = "https://github.com/victornaefitalikk/EntityRipper/blob/main/B-60.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 1000, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    NoDieOnCrouching = false,
    NoHiding = false,
    AntiCrucifix = true,
    KillRange = 10,
     OneRoom = false,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        0, -- Time (seconds)
    },
EntitySounds = {
PlaySound = {
              "https://github.com/victornaefitalikk/EntityRipper/blob/main/B-60%20Warning.rbxm?raw=true", -- SoundId Link or Roblox ID
            { Volume = 5 }, -- Sound properties
       },
        
                   
          Footsteps = {
             "https://github.com/victornaefitalikk/EntityRipper/blob/main/B-60%20incoming.rbxm?raw=true", -- SoundId Link or Roblox ID
              { Volume = 5 }, -- Sound properties
          },
    },

    Cycles = {
        Min = 6,
        Max = 6,
        WaitTime = 0.7,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Type = "3", -- "Normal" or 1 | "Pop" or 2 | "endlessdoorsrebound" or "Rebound" or 3 | More coming Soon
            Image1 = "rbxassetid://12115887808", -- Image1 url
            Image2 = "rbxassetid://12115887808", -- Image2 url
            Shake = true,
            Sound1 = {
                "", -- SoundId Link or Roblox ID
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                "", -- SoundId Link or Roblox ID
                { Volume = 3 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    DiffrentMessages = false,
    CustomDialog = {  
        {"You die to Wals"}, -- Death Messages
        {"Stop Dieing"},
        {"Bruh", "Use what you have learned from Rush!"},
        {"It seems like Template is causing quite the ruckus...", "Hide in a closet or bed as quickly as possible!"},
         {"I have told You What to do", "YOU JUST HAVE A SKILL ISSUE"}
    }
})

-----[[ Advanced Sctipting ]]-----

entity.Debug.OnEntityMoving = function(Invincible,Hiding,plrCollisionPoint)
print("Invincible: "..tostring(Invincible))
print("Player to Entity Collision (None hiding Point): "..tostring(plrCollisionPoint))
print("Hiding: "..tostring(Hiding))
end
       
entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned:",entityTable)
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned:",entityTable)
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:",entityTable)
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:",entityTable)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:",entityTable, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:",entityTable)
end

entity.Debug.OnDeath = function()
    warn("Player has died.")
end

------------------------

-- Run the created entity
Spawner.runEntity(entity)