script.on_event(defines.events.on_player_selected_area, function(event)
  if event.item == "wirestripper-tool" then
    -- remove all copper
    for _,ent in pairs(event.entities) do
      if ent.type == "electric-pole" then
        local c = ent.get_wire_connector(defines.wire_connector_id.pole_copper, false)
        if c then
          c.disconnect_all(defines.wire_origin.player)
        end
      end
    end
  end
end)

local has_output = {
  ["arithmetic-combinator"] = true,
  ["decider-combinator"] = true,
  ["selector-combinator"] = true,
}

script.on_event(defines.events.on_player_alt_selected_area, function(event)
  if event.item == "wirestripper-tool" then
    -- remove all red/green
    for _,ent in pairs(event.entities) do
        local red = ent.get_wire_connector(defines.wire_connector_id.circuit_red, false)
        if red then
          red.disconnect_all(defines.wire_origin.player)
        end

        local green = ent.get_wire_connector(defines.wire_connector_id.circuit_green, false)
        if green then
          green.disconnect_all(defines.wire_origin.player)
        end

        if has_output[ent.type] then
          local red = ent.get_wire_connector(defines.wire_connector_id.combinator_output_red, false)
          if red then
            red.disconnect_all(defines.wire_origin.player)
          end

          local green = ent.get_wire_connector(defines.wire_connector_id.combinator_output_green, false)
          if green then
            green.disconnect_all(defines.wire_origin.player)
          end
        end
      end
    end
end)
