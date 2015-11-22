require "defines"

script.on_init(function()
  pcall(function()
    game.player.remove_item{name = "burner-mining-drill", count = 1}
  end)
  pcall(function()
    game.player.insert{name = "burner-mining-drill", count = 1}
  end)
end)

script.on_event(defines.events.on_player_created, function(event)
  pcall(function()
    game.get_player(event.player_index).remove_item{name = "burner-mining-drill", count = 1}
  end)
  pcall(function()
    game.get_player(event.player_index).insert{name="burner-mining-drill", count=1}
  end)
end)
