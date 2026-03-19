# This function moves arrows from the first slot of a player's inventory to their second
#  - this avoids the bug where a player on cooldown will pick up an arrow, only to have it replaced by their bow in their first slot
#  - it does however introduce an issue where if a player holds more than one arrow in this slot, they'll only be given one,
#    and the other will spawn in the centre.

# Clear spectral arrows from this first slot
item replace entity @s container.0 with air

# Give player a single spectral arrow in their second slot
item replace entity @s container.1 with spectral_arrow