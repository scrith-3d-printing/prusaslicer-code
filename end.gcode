M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)

; move print head up a little
{if max_layer_z < max_print_height}G0 Z{z_offset+min(max_layer_z+5, max_print_height)} F600 {endif}

; present print
G0 X5 Y{print_bed_max[1]*0.95} F{travel_speed*60}

M140 S0 ; turn off heatbed
M104 S0 ; turn off temperature
M107 ; turn off fan
M84 S30 X Y E ; disable motors after 30 seconds

; Play a completion tone
M300 S220 P50