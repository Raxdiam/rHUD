local rhud = exports.rhud --- @type rHUDClient

rhud:create_info({
  id = 'info_player_id',
  label = 'Player ID',
  content = tostring(GetPlayerServerId(PlayerId()))
})
