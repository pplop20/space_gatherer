function move_player()
    playr_spd()

    if btn(1) then
        plyr_x=plyr_x+plyr_spd
        bskt_x = plyr_x + 8
    end
    if btn(0) then
        plyr_x=plyr_x-plyr_spd
        bskt_x = plyr_x - 8
    end

    if bskt_x<=0 then
        bskt_x=0
        plyr_x=bskt_x+8
    end

    if bskt_x>=120 then
        bskt_x=120
        plyr_x=bskt_x-8
    end
end

function playr_spd()
    if btnp(5) then
        plyr_spd=2
    end
end