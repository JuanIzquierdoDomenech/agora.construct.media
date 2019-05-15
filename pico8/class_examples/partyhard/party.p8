pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- party hard
-- by juanje

function _init()
 cls()
 x=rnd2(1,64)
 y=rnd2(64,128)
 r=rnd(10)
 
 draw=false
end

function _update()
 x=rnd2(1,128)
 y=rnd2(1,128)
 r=rnd(10)
 
 -- ambos botones al mismo tiempo
 if btn(5) and btn(4) then
  draw=true
 else
  draw=false
 end
 
 -- cualquiera de los dos botones
-- if btn(5) or btn(4) then
--  draw=true
-- else
--  draw=false
-- end
 
end

function _draw()
 --cls(7)
 --circfill(x,y,r,12)
 if draw then
  --cls()
  spr(1,x,y)
 end
end

function rnd2(low,high)
 local v=flr(rnd(high-low+1)+low)
 return v
end
__gfx__
0000000007a111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000077aa1aaa0aa0000000000000000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa8aa8aa0aa00000000aaa00000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaa00a0aa00000a0a00000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaa0aa0a00000000a00000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa0aa0aa000000aa00a0aa00000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000aa00aa0000aa0aa00aaa000000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000aaaa00000aa00a00000000000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000a0aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000007a1110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000077aa1aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000aa8aa8aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000aaaaaaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000aaaaaaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000aa0aa0aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000aa00aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007a1110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a11100000000000000
077aa1aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077aa1aaa000000000000
0aa8aa8aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa8aa8aa000000000000
0aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa000000000000
0aaaaaaaa0000000000000000000000000000000000000000000000007a1110000000000000000000000000000000000000000000000aaaaaaaa000000000000
0aa0aa0aa0000000000000000000000000000000000000000000000077aa1aaa00000000000000000000000000000000000000000000aa0aa0aa000000000000
00aa00aa000000000000000000000000000000000000000000000000aa8aa8aa000000000000000000000000000000000000000000000aa00aa0000000000000
000aaaa0000000000000000000000000000000007a11100000000000aaaaaaaa0000000000000000000000000000000000000000000000aaaa00000000000000
00000000000000000000000000000000000000077aa1aaa000000000aaa7a1110000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000aa87a111000000000aa77aa1aaa00000000000000000000000000000000000000000000000000000000000007
000000000000000000000000000000000000000aa77aa1aaa00000000aaa8aa8aa00000000000000000000000000000000000000000000000000000000000077
000000000000000000000007a11100000000000aaaa8aa8aa000000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000aa
000000000000000000000077aa1aaa000000000aaaaaaaaaa000000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000aa
0000000000000000000000aa8aa8aa0000000000aaaaaaaaa000000000aa0aa0aa000000000000000000000000000000000000000000000000000000000000aa
0000000000000000000000aaaaaaaa00000000000aaaaa0aa0000000000aa00aa0000000000000000000000000000000000000000000000000000000000000aa
0000000000000000000000aaaaaaaa000000000000aa00aa000000000000aaaa000000000000000000000000000000000000000000000000000000000000000a
0000000000000000000000aa0aa0aa0000000000000aaaa00000000000000000000000000000000000000000000000000000000000000000007a111000000000
00000000000000000000000aa00aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000077aa1aaa0000000
000000000000000000000000aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa8aa8aa0000000
00000000000000000000000000000000000000000000000000007a11100000000000000000000000000000000000000000000000000000000aaaaaaaa0000000
00000000000000000000000000000000000000000000000000077aa1aaa000000000000000000000000000000000000000000000000000000aaaaaaaa0000000
000000000000000000000000000000000000000000000000000aa8aa8aa00000000000000000000000000000000000000000000000007a111aa0aa0aa0000000
000000000000000000000000000000000000000000000000000aaaaaaaa00000000000000000000000000000000000000000000000077aa1aaaa00aa00000000
000000000000000000000000000000000000000000000000000aaaaaaaa000000000000000000000000000000000000000000000000aa8aa8aaaaaa000000000
000000000000000000000000000000000000000000000000000aa7aa1aa000000000000000000000000000000000000000000000000aaaaaaaa0000000000000
0000000000000000000000000000000000000000000000000000aa11aaaa00000000000000000000000000000000000000000000000aaaaaaaa0000000000000
00000000000000000000000000000000000000000000000000077aaaaaaa00000000000000000000000000000000000000000000000aa0aa0aa0000000000000
00000000000000000000000007a111000000000000000000000aa8aa8aaa000000000000000000000000000000000000000000000000aa00aa00000000000000
00000000000000000000000077aa1aaa0000000000000000000aaaaaaaaa0000000000000000000000000000000000000000000000000aaaa000000000000000
000000000000000000000000aa8aa8aa0000000000000000000aaaaaaaaa00000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000aaaaaaaa0000000000000000000aaaaa0aa000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000aaaaaaaa00000000000000000000aaaaaa0000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000aa0aa0aa000000000000000000000aaaa00000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000aa00aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007a111000000000000000000aaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0077aa1aaa0000000007a11100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aa8aa8aa0000000077aa1aaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaaaaa00000000aa8aa8aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaaaaa00000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aa0aa0aa00000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000aa00aa000000000aa0aa0aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aaaa00000000000aa00aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000aaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007a111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0077aa1aaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aa8aa8aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaaaaa000000000000000000007a111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aa0aa0aa000000000000000000077aa1aaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000aa00aa00000000000000000000aa8aa8aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aaaa000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000aa0aa0aa0000000000000000000000000000000007a11100000000000000000000000000000000000000000000000000000
000000000000000000000000000000aa00aa00000000000000000000000000000000077aa1aaa000000000000000000000000000007a11100000000000000000
0000000000000000000000000000000aaaa0000000000000000000000000000000000aa8aa8aa000000000000000000000000000077aa1aaa000000000000000
000000000000000000000007a11100000000000000000000000000000000000000000aaaaaaaa0000000000000000000000000000aa8aa8aa000000000000000
000000000000000000000077aa1aaa000000000000000000000000000000000000000aaaaaaaa0000000000000000000000000000aaaaaaaa000000000000007
0000000000000000000000aa8aa8aa000000000000000000000000000000000000000aa0aa0aa0007a11100000000000000000000aaaaaaaa000000000000077
0000000000000000000000aaaaaaaa1100000000000000000000000000000000000000aa00aa00077aa1aaa000000000000000000aa0aa0aa0000000000000aa
0000000000000000000000aaaaaaaa1aaa0000000000000000000000000000000000000aaaa0000aa8aa8aa0000000000000000000aa00aa00000000000000aa
0000000000000000000000aa0aaaaaa8aa000000000007a11100000000000000000000000000000aaaaaaaa00000000000000000000aaaa000000000000000aa
00000000000000000000000aa0aaaaaaaa000000000077aa1aaa000000000000000000000000000aaaaaaaa000000000000000000000000000000000000000aa
000000000000000000000000aaaaaaaaaa0000000000aa8aa8aa000000000000000000000000000aa0aa0aa0000000000000000000000000000000000000000a
00000000000000000000000000aa0aa0aa0000000000aaaaaaaa00000000000000007a1110000000aa00aa000000007a11100000000000000000000000000000
000000000000000000000000000aa00aa00000000000aaaaaaaa00000000000000077aa1aaa000000aaaa0000000077aa1aaa000000000000000000000000000
0000000000000000000000000000aaaa000000000000aa0aa0aa000000000000000aa8aa8aa000000000000000000aa8aa8aa7a1110000000000000000000000
000000000000000000000000000000000000000000000aa00aa0000000000000000aaaaaaaa00000000000000007aaaaaaaa77aa1aaa00000000000000000000
0000000000000000000000000000000000000000000000aaaa00000000000000000aaaaaaaa00000000000000077aaaaaaaaaa8aa8aa00000000000000000000
0000000000000000000000000000000000000000000000000000007a11100000000aa0aa0aa000000000000000aa8aa8aa0aaaaaaaaa00000000000000000000
000000007a111000000000000000000000000000000000000000077aa1aaa0000000aa00aa0000000000000000aaaaaaaaaaaaaaaaaa00000000000000000000
000000077aa1aaa00000000000000000000000000000000000000aa8aa8aa00000000aaa7a1110000000000000aaaaaaaaa0aa0aa0aa00000000000000000000
0000000aa8aa8aa00000000000000000000000000000000000000aaaaaaaa000000000077aa1aaa00000000000aa0aa0aa000aa00aa000000000000000000000
0000000aaaaaaaa00000000000000000000000000000000000000aaaaaaaa0000000000aa8aa8aa000000000000aa00aa00000aaaa0000000000000000007a11
0000000aaaaaaaa00000000000000000000000000000000000000aa0aa0aa0000000000aaaaaaaa0000000000000aaaa00000000000000000000000000077aa1
0000000aa0aa0aa000000000000000000000000000000000000000aa00aa00000000000aaaaaaaa00000000000000000000000000000000000000000000aa8aa
00000000aa00aa00000000000000000000000000000000000000000aaaa000000000000aa7aa1aa00000000000000000000000000000000000000000000aaaaa
000000000aaaa00000000000000000000000000000000000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000aaaaa
000000000000000000000000000000000000000000000000000000000000000000000000aaaaa8aa0000000000000000000000000000000000000000000aa0aa
000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa00000000000000000000000000000000000000000000aa00
000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa000000000000000000000000000000000000000000000aaa
000000000000000000000000000000000000000000000000000000000000000000000000aa0aa0aa000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000aa00aa00000000000000000000000000007a1110000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000aaaa000000000000000000000000000077aa1aaa00000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa8aa8aa00000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a111aaaaaaa00000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077aa1aaaaaaaa00000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa8aa8aaaa0aa00000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa00aa000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaa0000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa0aa0a7a111000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa00a77aa1aaa0000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaa8aa8aa0000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa0000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa0000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa0aa0aa0000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa00aa00000000000000
00000000000000000000000000000000000000007a1110000000000000000000000000000000000000000000000000000000000000000aaaa000000000000000
00000000000000000000000000000000000000077aa1aaa0000000000000000000000000000000000000000000000000000000000007a1110000000000000000
000000000000000000000000000000000000000aa8aa8aa0000000000000000000000000000000000000000000000000000000000077aa1aaa00000000000000
000000000000000000000000000000000000000aaaaaaaa00000000000000000000000000000000000000000000000000000000000aa8aa8aa00000000000000
000000000000000000000000000000000000000aaaaaaaa00000000000000000000000000000000000000000000000000000000000aaaaaaaa00000000000000
000000000000000000000000000000000000000aa0aa0aa0000000000000000000000000000000000000007a111000000000000000aaaaaaaa00000000000000
0000000000000000000000000000000000000000aa00aa00000000000000000000000000000000000000077aa1aaa0000000000000aa0aa0aa00000000000000
00000000000000000000000000000000000000000aaaa0000000000000000000000000000000000000000aa8aa8aa00000000000000aa00aa000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa000000000000000aaaa0000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa00000000000000000000000000000000000
000000000000000000000000000000000000000000000007a111000000000000000000000000000000000aa0aa0aa000000000007a1110000000000000000000
000000000000000000000000000000000000000000000077aa1aaa00000000000000000000000000000000aa00aa0000000000077aa1aaa00000000000000000
0000000000000000000000000000000000000000000000aa8aa8aa000000000000000000000000000000000aaaa000000000000aa8aa8aa00000000000000000
0000000000000000000000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000aaaaaaaa00000000000000000
0000000000000000000000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000aaaaaaaa00000000000000000

__sfx__
0001000031050310502f0502c05026050220501f0501b050000001505000000000001005000000000000d05000000000000a05000000000000000008050000000000000000070500000000000000000000000000
