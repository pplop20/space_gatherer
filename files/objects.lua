function food_drop()
    food_y = food_y + food_spd

    if food_y>bskt_y and abs(food_x-bskt_x)<=6 then
        food_y = -10
        counter = counter + 1
    end

    if food_y>128 then
        food_y=-10
    end
end

function poison_drop()
    poison_y = poison_y + poison_spd

    if poison_y>bskt_y and abs(poison_x-bskt_x)<=5 then
        poison_y = -10
        counter = counter - 1
    end

    if poison_y>128 then --restart poison
        poison_y=-10
    end
end

function generate_food()
    for i=1,num_food do
        spr(3, food_x, food_y)
    end
end