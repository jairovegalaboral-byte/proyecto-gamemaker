move_speed = 2;
tilemap = layer_tilemap_get_id("Tiles_col");
hp = 10;
hp_total = hp;
damage =1;
facing = 0;

level=1;
xp=0;
xp_require = 100;
function add_xp(_xp_to_add){
    xp += _xp_to_add;
    if (xp >= xp_require){
        level++;
        xp -= xp_require;
        xp_require *= 1.5
        
        hp_total += 5;
        hp = hp_total;
        damage += 1;
        
    }
}