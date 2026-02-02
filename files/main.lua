function _init()
    --counter 
    counter = 0

    -- player variables
    plyr_x = 64
    plyr_y = 120-8
    plyr_spd = 1

    --basket variables
    bskt_x = plyr_x + 8
    bskt_y = plyr_y

    --food variables
    food_x = rnd(120)
    food_y = 0
    food_spd = rnd(2)
    num_food = rnd(3)+4

    --poison
    poison_x = rnd(120)
    poison_y = 0
    poison_spd = rnd(2)
    num_poison = rnd(2)+2


end

function _update()
    move_player()
    food_drop()
    poison_drop()
end 

function _draw()
    cls()
    map()
    spr(1, plyr_x,plyr_y) --space guy
    spr(5, bskt_x, bskt_y) --basket

    spr(3, food_x, food_y) -- food


    spr(4, poison_x, poison_y) -- poison

    --generate_food()

    print(counter)
end
