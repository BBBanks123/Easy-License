--[[
8888888888        d8888  .d8888b.  Y88b   d88P     888      8888888  .d8888b.  8888888888 888b    888  .d8888b.  8888888888 
888              d88888 d88P  Y88b  Y88b d88P      888        888   d88P  Y88b 888        8888b   888 d88P  Y88b 888        
888             d88P888 Y88b.        Y88o88P       888        888   888    888 888        88888b  888 Y88b.      888        
8888888        d88P 888  "Y888b.      Y888P        888        888   888        8888888    888Y88b 888  "Y888b.   8888888    
888           d88P  888     "Y88b.     888         888        888   888        888        888 Y88b888     "Y88b. 888        
888          d88P   888       "888     888         888        888   888    888 888        888  Y88888       "888 888        
888         d8888888888 Y88b  d88P     888         888        888   Y88b  d88P 888        888   Y8888 Y88b  d88P 888        
8888888888 d88P     888  "Y8888P"      888         88888888 8888888  "Y8888P"  8888888888 888    Y888  "Y8888P"  8888888888 

888888b.   Y88b   d88P
888  "88b   Y88b d88P  
888  .88P    Y88o88P   
8888888K.     Y888P    
888  "Y88b     888     
888    888     888     
888   d88P     888     
8888888P"      888

 .d8888b.         d8888 8888888b.  888      88888888888  .d88888b.  888b    888 
d88P  Y88b       d88888 888   Y88b 888          888     d88P" "Y88b 8888b   888 
888    888      d88P888 888    888 888          888     888     888 88888b  888 
888            d88P 888 888   d88P 888          888     888     888 888Y88b 888 
888           d88P  888 8888888P"  888          888     888     888 888 Y88b888 
888    888   d88P   888 888 T88b   888          888     888     888 888  Y88888 
Y88b  d88P  d8888888888 888  T88b  888          888     Y88b. .d88P 888   Y8888 
 "Y8888P"  d88P     888 888   T88b 88888888     888      "Y88888P"  888    Y888 
 ]]--

easylicense = easylicense or {}

-- MENU SETTINGS

-- You can add an extra comma and number to the color settings to make it transparent, e.g Color( 255 , 255 , 255 , **255** ) 255 is opaque and 0 is transparent

easylicense.menuname = "License Dealer" -- Name that displays on the top left of the menu.

easylicense.backgroundcolor = Color( 52 , 52 , 52 ) -- Changes the background color of the menu (Only change the numbers)

easylicense.buttonhighlightcolor = Color( 255 , 0 , 0 ) -- Changes the color of the line underneath the button and the text color when the mouse hovers over it.

easylicense.buttontext = "Purchase" -- Changes the text shown on top of the button.

easylicense.buttondescription = "Purchase a license here." -- The text that appears above the button explaining what it does

easylicense.licenseprice = 500 -- Please change both values to the same, changes the license cost.

easylicense.buttonaccentcolor = Color( 255 , 255 , 255 ) -- Changes the color of the line on the bottom of the button and text (Not the same as the hovered)

easylicense.buttoncolor = Color( 42 , 42 , 42 ) -- Changes the color of the button that gives the player the license.

easylicense.topbarcolor  = Color( 42 , 42 , 42 ) -- Changes the color of the top bar.

easylicense.textcolor = Color( 255 , 255 , 255 ) -- Changes the color of all text in the menu.

-- NPC SETTINGS

easylicense.npcmodel = "models/gman_high.mdl"

-- CHAT SETTINGS

easylicense.chatcolor = Color( 255 , 255 , 255 ) -- Changes the color of the text in the chat when notifications pop up.
easylicense.prefixcolor = Color( 255 , 0 , 0 ) -- Changes the color of the prefix (Default prefix being (!))
easylicense.prefix = "(!)" -- Adds a prefix to the alerts that pop up in chat (Leave blank if you do not want it)
easylicense.boughtlicense = "You have succesfully bought a license!" -- Alert shown whenever a license is bought.
easylicense.alreadyhaslicense = "You already have a license!" -- Notification that pops up in chat when they already have a license.
easylicense.cantafford = "You can not afford a license!" -- Notification that pops up when a player can not afford a license (Price is set with licenseprice value)