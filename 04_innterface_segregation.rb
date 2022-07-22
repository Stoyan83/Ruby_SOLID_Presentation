# Don’t force any client to implement an interface that isn’t relevant to them.

01.Interface segregation Violation

class EntertainmentDevice
  def connect_to_device_via_hdmi_cable
    puts "Connected via HDMI"
  end

  def connect_to_device_via_wifi
    puts "Connected via WiFi"
  end

  def connect_to_device_via_rca_cable
    puts "Connected via RCA cable"
  end

  def connect_to_device_via_ethernet_cable
    puts "Connected via Ethernet cable"
  end

  def connect_device_to_power_outlet
    puts "Plugged in the power outlet"
  end
end

class Tv < EntertainmentDevice
  def connect_to_television
    connect_to_device_via_hdmi_cable
  end

  def plug_in_power
    connect_device_to_power_outlet
  end
end

class GameConsole < EntertainmentDevice
  def connect_to_tv
    connect_to_device_via_hdmi_cable
  end

  def connect_to_router
    connect_to_device_via_ethernet_cable
  end

  def plug_in_power
    connect_device_to_power_outlet
  end
end

class Router < EntertainmentDevice
  def connect_to_tv
    connect_to_device_via_ethernet_cable
  end

  def connect_to_game_console
    connect_to_device_via_ethernet_cable
  end

  def plug_in_power
    connect_device_to_power_outlet
  end
end

puts "TV..."

tv = Tv.new
tv.connect_to_television
tv.plug_in_power

puts
puts "TV has no WiFi and RCA conection methods..."

tv.connect_to_device_via_wifi
tv.connect_to_device_via_rca_cable

puts
puts "Game console..."

game_console = GameConsole.new
game_console.connect_to_tv
game_console.connect_to_router
game_console.plug_in_power

puts
puts "Game Console has no WiFi and RCA conection methods..."
game_console.connect_to_device_via_wifi
game_console.connect_to_device_via_rca_cable

puts
puts "Router..."

router = Router.new
router.connect_to_tv
router.connect_to_game_console
router.plug_in_power

puts
puts "Router has no WiFi and RCA conection methods..."
router.connect_to_device_via_wifi
router.connect_to_device_via_rca_cable

# 02. Interface segregation Solution

# module HDMIConnector
#   def connect_to_device_via_hdmi_cable
#     puts "Connected via HDMI"
#   end
# end

# module RCAConnector
#   def connect_to_device_via_rca_cable
#     puts "Connected via RCA cable"
#   end
# end

# module WiFiCOnnector
#   def connect_to_device_via_rca_cable
#     puts "Connected via WiFi"
#   end
# end

# module EthernetCable
#   def connect_to_device_via_ethernet_cable
#     puts "Connected via Ethernet cable"
#   end
# end

# module PowewrOutlet
#   def connect_device_to_power_outlet
#     puts "Plugged in the power outlet"
#   end
# end

# class Tv
#   include HDMIConnector
#   include PowewrOutlet

#   def connect_to_television
#     connect_to_device_via_hdmi_cable
#   end

#   def plug_in_power
#     connect_device_to_power_outlet
#   end
# end

# class Router
#   include EthernetCable
#   include PowewrOutlet

#   def connect_to_tv
#     connect_to_device_via_ethernet_cable
#   end

#   def connect_to_game_console
#     connect_to_device_via_ethernet_cable
#   end

#   def plug_in_power
#     connect_device_to_power_outlet
#   end
# end

# class GameConsole
#   include HDMIConnector
#   include EthernetCable
#   include PowewrOutlet

#   def connect_to_tv
#     connect_to_device_via_hdmi_cable
#   end

#   def connect_to_router
#     connect_to_device_via_ethernet_cable
#   end

#   def plug_in_power
#     connect_device_to_power_outlet
#   end
# end

# puts "TV..."
# tv = Tv.new
# tv.connect_to_television
# tv.plug_in_power

# tv.connect_to_device_via_wifi
# tv.connect_to_device_via_rca_cable

# puts
# puts "Gamee console..."
# game_console = GameConsole.new
# game_console.connect_to_tv
# game_console.connect_to_router
# game_console.plug_in_power

# puts
# puts "Router..."
# router = Router.new
# router.connect_to_tv
# router.connect_to_game_console
# router.plug_in_power
