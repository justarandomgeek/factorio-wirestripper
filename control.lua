script.on_event(defines.events.on_player_selected_area, function(event)
  if event.item == "wirestripper-tool" then
    --game.print(serpent.block(event))
    -- remove all copper
    for _,ent in pairs(event.entities) do
      if ent.type == "electric-pole" then
          ent.disconnect_neighbour()
      end
    end
  end
end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
  if event.item == "wirestripper-tool" then
    --game.print(serpent.block(event))
    -- remove all red/green
    for _,ent in pairs(event.entities) do
      if ent.type == "electric-pole" then
          ent.disconnect_neighbour(defines.wire_type.red)
          ent.disconnect_neighbour(defines.wire_type.green)
      end
    end
  end
end)
