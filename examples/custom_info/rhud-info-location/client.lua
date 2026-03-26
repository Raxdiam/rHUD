local rhud = exports.rhud --- @type rHUDClient

local compass_points = {
  [0] = 'N',
  [45] = 'NW',
  [90] = 'W',
  [135] = 'SW',
  [180] = 'S',
  [225] = 'SE',
  [270] = 'E',
  [315] = 'NE',
  [360] = 'N'
}

Citizen.CreateThread(function()
  local location_template = [[
    <div class="info-location">
      <div class="info-location-point">%s</div>
      <div class="info-location-area">
        <div class="info-location-street">%s</div>
        <div class="info-location-zone">%s</div>
      </div>
    </div>
  ]]

  local info_location = rhud:create_info({
    id = 'info_location',
    style = [[
      .info-location {
        display: flex;
        align-items: center;
        justify-content: center;
        line-height: 0.9vh;
        gap: 0.6vh;
        height: 3.315vh;
      }

      .info-location .info-location-point {
        font-family: 'Highway Goth';
        font-size: 2.4vh;
        line-height: 1.5vh;
        margin: 0.4vh 0 0 0.4vh;
        padding-right: 0.6vh;
        border-right: 1px solid hsla(0, 0%, 100%, 0.185);
      }

      .info-location .info-location-area {
        display: flex;
        flex-direction: column;
        gap: 0.45vh;
      }

      .info-location .info-location-area .info-location-street {
        font-weight: bold;
        font-size: 1.35vh;
        line-height: 1.2vh;
        color: hsla(45, 82%, 62%, 0.902);
      }

      .info-location .info-location-area .info-location-zone {
        font-size: 1.1vh;
      }
    ]],
    content = location_template:format('N', 'Street Name', 'Zone Name'),
    wrap = false
  })

  while true do
    Wait(500)

    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    local compass_point = compass_points[math.floor(((heading + 22.5) % 360) / 45) * 45]
    local street_name = GetStreetNameFromHashKey(GetStreetNameAtCoord(pos.x, pos.y, pos.z))
    local zone_name = GetNameOfZone(pos.x, pos.y, pos.z)
    local zone_label = DoesTextLabelExist(zone_name) and GetLabelText(zone_name) or zone_name

    info_location:update_content(location_template:format(compass_point, street_name, zone_label))
  end
end)
