
data:extend({
  {
    type = "selection-tool",
    name = "wirestripper-tool",
    icon = "__wirestripper__/wirestripper.png",
    icon_size = 32,
    stack_size = 1,
    subgroup = "terrain",
    order = "d[wirestripper-tool]-a[plain]",
    flags = {"spawnable", "only-in-cursor"},
    select = {
      border_color = {r = 0.2, g = 0.8, b = 0.2, a = 0.2},
      mode = "blueprint",
      cursor_box_type = "electricity", -- copy?
      entity_type_filters = {
        "electric-pole"
      }
    },
    alt_select = {
      border_color = {r = 0.2, g = 0.8, b = 0.2, a = 0.2},
      mode = "blueprint",
      cursor_box_type = "electricity",
    },
  }--[[@as data.SelectionToolPrototype]],
  {
    type = "shortcut",
    name = "give-wirestripper",
    order = "b[blueprints]-g[blueprint]",
    action = "spawn-item",
    localised_name = {"shortcut.make-blueprint"},
    item_to_spawn = "wirestripper-tool",
    style = "red",
    icon = "__wirestripper__/wirestripper.png",
    icon_size = 32,
    small_icon = "__wirestripper__/wirestripper.png",
    small_icon_size = 32,
  }--[[@as data.ShortcutPrototype]],
})
