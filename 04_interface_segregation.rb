# Many client-specific interfaces are better than one general-purpose interface.



# What is interfece, new feature of ruby since the end of 2020 with 3.0.0 release
# RBS -new type syntax format, which implement interfaces
# new extension .rbs

# A client should not depend on methods it doesn't use.
# Don’t force any client to implement an interface that isn’t relevant to them.


# 01. Interface segregation Violation

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

class Television < EntertainmentDevice
    def connect_to_tv
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

tv = Television.new
puts tv.connect_to_tv
puts tv.plug_in_power

game_console = GameConsole.new
puts game_console.connect_to_tv
puts game_console.connect_to_router
puts game_console.plug_in_power

router = Router.new
puts router.connect_to_tv
puts router.connect_to_game_console
puts router.plug_in_power



# 02. Interface segregation Solution

# module HDMIConnector
#     def connect_to_device_via_hdmi_cable
#         puts "Connected via HDMI"
#     end    
# end


# module RCAConnector
#     def connect_to_device_via_rca_cable
#         puts "Connected via RCA cable"
#     end
# end

# module WiFiCOnnector
#     def connect_to_device_via_rca_cable
#         puts "Connected via WiFi"        
#     end
# end


# module EthernetCable
#     def connect_to_device_via_ethernet_cable
#         puts "Connected via Ethernet cable"
#     end       
# end

# module PowewrOutlet
#     def connect_device_to_power_outlet
#         puts "Plugged in the power outlet"
#     end
# end


# class Television 
#     include HDMIConnector
#     include PowewrOutlet

#     def connect_to_tv
#         connect_to_device_via_hdmi_cable
#     end
    
#     def plug_in_power
#         connect_device_to_power_outlet
#     end
# end


# class Router 
#     include EthernetCable
#     include PowewrOutlet

#     def connect_to_tv
#         connect_to_device_via_ethernet_cable
#     end

#     def connect_to_game_console
#         connect_to_device_via_ethernet_cable
#     end

#     def plug_in_power
#         connect_device_to_power_outlet
#     end
# end


# class GameConsole 
#     include HDMIConnector
#     include EthernetCable
#     include PowewrOutlet

#     def connect_to_tv
#         connect_to_device_via_hdmi_cable
#     end

#     def connect_to_router
#         connect_to_device_via_ethernet_cable
#     end

#     def plug_in_power
#         connect_device_to_power_outlet
#     end
# end

# tv = Television.new
# puts tv.connect_to_tv
# puts tv.plug_in_power

# game_console = GameConsole.new
# puts game_console.connect_to_tv
# puts game_console.connect_to_router
# puts game_console.plug_in_power

# router = Router.new
# puts router.connect_to_tv
# puts router.connect_to_game_console
# puts router.plug_in_power
