local noclipEnabled = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 73) then
            noclipEnabled = not noclipEnabled
            if noclipEnabled then
                TriggerEvent('txcl:setPlayerMode', "noclip", true)
            else
                TriggerEvent('txcl:setPlayerMode', "none", true)
            end
        end
    end
end)
