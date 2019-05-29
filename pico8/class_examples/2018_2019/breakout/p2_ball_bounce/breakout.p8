pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
function _init()
 -- paddle variables
 pad_w=24
 pad_h=4
 pad_x=64-pad_w/2
 pad_y=122
 pad_dx=0
 pad_speed=3
 
 -- ball variables
 ball_x=32
 ball_y=27
 ball_r=3
 ball_dx=2
 ball_dy=-2
end


function _update()
 move_paddle()
 move_ball()
end


function _draw()
 cls(12)
 -- paddle
 rectfill(pad_x,pad_y,pad_x+pad_w,pad_y+pad_h,10)

 -- ball
 circfill(ball_x,ball_y,ball_r,5)
end
-->8
function move_paddle()
 local btn_pressed=false

 -- move right
 if btn(1) then
  pad_dx=pad_speed
  btn_pressed=true
  -- pad_x=pad_x-1
 end
 
 -- move left
 if btn(0) then
  pad_dx= -pad_speed
  btn_pressed=true
  -- pad_x=pad_x+1
 end
 
 -- 
 if not btn_pressed then
  pad_dx=pad_dx/2
 end
 
 -- apply acceleration
 pad_x=pad_x+pad_dx
 pad_x=mid(0,pad_x,127-pad_w)
end

function move_ball()
 ball_x=ball_x+ball_dx
 ball_y=ball_y+ball_dy
 
 -- upper side
 if ball_y < ball_r  then
  -- ball_dy=ball_dy*(-1)
  ball_dy = -ball_dy
 end 
 
 -- left/right side
 if ball_x < ball_r 
 or ball_x > 127-ball_r then
  ball_dx = -ball_dx
 end

end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000