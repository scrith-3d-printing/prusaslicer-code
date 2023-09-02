; insert at layer change
M593 F{(layer_num < 2 ? 0 : 15 + 45.0 * (layer_num - 2) / 297)} ; Hz Input Shaping Test
M117 {(15 + 45.0 * (layer_num - 2) / 297)}Hz