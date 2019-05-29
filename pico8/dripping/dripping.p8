pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
function _init()
 cls()
 x=64
 y=64
 c=0
 t=0
 points={}
end

function _update()

 t+=1

 if btn(1) then
  x+=1
  c-=1
 end
 
 if btn(0) then
  x-=1
  c+=1
 end
 
 if btn(2) then
  y-=1
  c+=1
 end
 
 if btn(3) then
  y+=1
  c-=1
 end
 
 if t%30==0 then
  t=0
  add(points,get_point())
  for i=1,#points do
   drip(points[i])
  end
 end
 
end

function _draw()
 --cls()
 pset(x,y,c)
 --print(t,0,0,5)
 
 if t%30==0 then
  for i=1,#points do
   pset(points[i].x, points[i].y, c)
  end
 end
end

function drip(p) 
 p.y+=1
end

function get_point()
 local p={}
 p.x = x
 p.y = y
 return p
end
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000006543210fedcba9876000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000605000000000000000400000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000876005000000000000000020000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000008000006000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000080000006000000000000000000e00000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000080000000a0000000000000000000c0000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000800000000700000000000000000000a000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000080000000007000000000000000000000800000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000800000000003000000000000000000000060000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000008000000000004000000000000000000000004000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000080000000000008000000000000000000000000200000000000000000000000000000000
000000000000000000000000006543210fedcb00000000000000000080000000000000d000000000000000000000000000000000000000000000000000000000
0000000000000000000000000600000000000090000000000000000800000000000000f00000000000000000000000000e000000000000000000000000000000
0000000000000000000000006000000000000007000000000000008000000000000000f000000000000000000000000000c00000000000000000000000000000
00000000000000000000000600000000000000005000000000000800000000000000004000000000000000000000000000b00000000000000000000000000000
00000000000000000000006000000000000000005300000000008000000000000000005000000000000000000000000000a00000000000000000000000000000
0000000000000000000006000000000000000000601000000008000000000000000000c000000000000000000000000000a00000000000000000000000000000
0000000000000000000060000000000000000000600f000000800000000000000000004000000000000000000000000000500000000000000000000000000000
0000000000000000000600000000000000000000a000dcba98000000000000000000000000000000000000000000000000500000000000000000000000000000
00000000000000000060000000000000000000007000000000000000000000000000000000000000000000000000000000600000000000000000000000000000
00000000000000000600000000000000000000007000000000000000000000000000000000000000000000000000000000600000000000000000000000000000
00000000000000006000000000000000000000003000000000000000000000000000000000000000000000000000000005a00000000000000000000000000000
00000000000000060000000000000000000000004000000000000000000000000000000000000000000000000000000050700000000000000000000000000000
00000000000000600000000000000000000000008000000000000000000000000000000000000000000000000000000500700000000000000000000000000000
0000000000000600000000000000000000000000d000000000000000000000000000000000000000000000000000005000300000000000000000000000000000
0000000000006000000000000000000000000000f000000000000000000000000000000000000000000000000000050000400000000000000000000000000000
00000000000600000000000a9876543210fe0000f000000000000000000000000000000000000000000000000000500000800000000000000000000000000000
0000000000600000000000a0000000000000c0004000000000000000000000000000000000000000000000000005000000d00000000000000000000000000000
000000000660000000000a000000000000000a005000000000000000000000000000000000043210fedcb0000050000000f00000000000000000000000000000
00000000056000000000a0000000000000000080c000000000000000000000000000000000400000000009000500000000f00000000000000000000000000000
0000000004a00000000a000000000000000000064000000000000000000000000000000004000000000000705000000000400000000000000000000000000000
000000000370000000a0000000000000000000004000000000000000000000000000000040000000000000050000000000500000000000000000000000000000
00000000027000000090000000000000000000000200000000000000000000000000000400000000000000503000000000c00000000000000000000000000000
00000000013000000080000000000000000000000000000000000000000000000000004000000000000005003100000000400000000000000000000000000000
0000000000400000007000000000000000000000000e0000000000000000000000000400000000000000500040f0000000000000000000000000000000000000
000000000f800000006000000000000000000000000ec0000000000000000000000040000000000000050000800d000000000000000000000000000000000000
000000000ed0000000500000000000000000000000050a000000000000000000000400000000000000500000d000b00000000000000000000000000000000000
000000000df00000005300000000000000000000000a00800000000000000000004000000000000005000000f000090000000000000000000000000000000000
000000000cf0000000e010000000000000000000000500060000000000000000040000000000000050000000f000007000000000000000000000000000000000
000000000b40000000500f0000000000000000000005000040000000000000004000000000000005000000004000000500000000000000000000000000000000
000000000a50000000a000d000000000000000000006000002000000000000040000000000000050000000005000000030000000000000000000000000000000
0000000009c000000050000b0000000000000000000600000000000000000040000000000000050000000000c000000001000000000000000000000000000000
0000000008400000005000009000000000000000000a0000000e0000000004000000000000005000000000004000000000f00000000000000000000000000000
0000000007000000006000000700000000000000000700000000c0000000400000000000000500000000000000000000000d0000000000000000000000000000
00000000060000000060000000500000000000000007000000000a0000040000000000000050000000000000000000000000b000000000000000000000000000
000000000500000000a0000000030000000000000003000000000080004000000000000005000000000000000000000000000900000000000000000000000000
00000000040000000070000000001000000000000004000000000006044000000000000055000000000000000000000000000070000000000000000000000000
00000000030000000070000000000f0000000000000800000000000040800000000000050a000000000000000000000000000005000000000000000000000000
000000000200000000300000000000d000000000000d00000000000402d000000000005005000000000000000000000000000000300000000000000000000000
0000000001000000004000000000000b00000000000f00000000004000f000000000050005000000000000000000000000000000010000000000000000000000
0000000000000000008000000000000090000000000f00000000040000fedcba987650000600000000000000000000000000000000f000000000000000000000
000000000f00000000d0000000000000070000000004000000004000004000000000000006000000000000000000000000000000000d00000000000000000000
000000000e00000000f000000000000000500000000500000004000000500000000000000a0000000000000000000000000000000000b0000000000000000000
000000000d00000000f000000000000000030000000c00000040000000c000000000000007000000000000000000000000000000000009000000000000000000
000000000c0000000040000000000000000010000004000004000000004000000000000007000000000000000000000000000000000008000000000000000000
0000000000a00000005000000000000000000f000000000040000000000000000000000003000000000000000000000000000000000007000000000000000000
000000000008000000c0000000000000000000d00000000400000000000000000000000004000000000000000000000000000000000070000000000000000000
000000000000600000400000000000000000000b0000004000000000000000000000000008000000000000000000000000000000000700000000000000000000
0000000000006400000000000000000000000000900004000000000000000000000000000d000000000000000000000000000000007000000000000000000000
000000000000a020000000000000000000000000076543210fedcba987654321000000000f000000000000000000000000000000070000000000000000000000
0000000000007000000000000000000000000000000400000000000000000000000000000f000000000000000000000000000000700000000000000000000000
0000000000007000e000000000000000000000000040000050000000000000000000000004000000000000000000000000000007000000000000000000000000
00000000000030000c000000000000000000000004000000e0000000000000000000000005000000000000000000000000000070000000000000000000000000
000000000000400000a000000000000000000000400000005000000000000000000000000c000000000000000000000000000770000000000000000000000000
000000000000800000080000000000000000000400000000a0000000000000000000000004000000000000000000000000007030000000000000000000000000
000000000000d0000000600000000000000000400000000050000000000000000000000000000000000000000000000000070040000000000000000000000000
000000000000f0000000040000000000000004000000000050000000000000000000000000000000000000000000000000700080000000000000000000000000
000000000000f00000000020000000000000400000000000600000000000000000000000000000000000000000000000070000d0000000000000000000000000
000000000000400000000000000000000004000000000000600000000000000000000000000000000000000000000000700000f0000000000000000000000000
000000000000500000000000e00000000003000000000000a00000000000000000000000000000000000000000000007000000f0000000000000000000000000
000000000000c000000000000c000000000200000000000070000000000000000000000000000000000000000000007000000040000000000000000000000000
00000000000040000000000000a00000000000000000000070000000000000000000000000000000000000000000070000000050000000000000000000000000
0000000000000000000000000008000000000e000000000030000000000000000000fedcba9876543210000000007000000000c0000000000000000000000000
00000000000000000000000000006000000000c0000000004000000000000000000000d0000000000000e0000007000000000040000000000000000000000000
000000000000000000000000000004000000000a000000008000000000000000000000f00000000000000c000070000000000000000000000000000000000000
000000000000000000000000000000200000000080000000d000000000000000000000f000000000000000a00700000000000000000000000000000000000000
000000000000000000000000000000000000000086000000f0000000000000000000004000000000000000087000000000000000000000000000000000000000
00000000000000000000000000000000e0000000d0400000f0000000000000000000005000000000000000076000000000000000000000000000000000000000
000000000000000000000000000000000c000000f00200004000000000000000000000c000000000000000700400000000000000000000000000000000000000
0000000000000000000000000000000000a00000f000000050000000000000000000004000000000000007000020000000000000000000000000000000000000
000000000000000000000000000000000008000040000e00c0000000000000000000000000000000000070000000000000000000000000000000000000000000
0000000000000000000000000000000000006000500000c040000000000000000000000000000000000700000000e00000000000000000000000000000000000
0000000000000000000000000000000000000400c000000a000000000000000000000000000000000070000000000c0000000000000000000000000000000000
0000000000000000000000000000000000000020400000008000000000000000000000000000000007000000000000a000000000000000000000000000000000
00000000000000000000000000000000000000000000000006000000000000000000000000000000700000000000000800000000000000000000000000000000
0000000000000000000000000000000000000000e000000000432100000000000000000000000007000000000000000060000000000000000000000000000000
00000000000000000000000000000000000000000c00000000000000000000000000000000000070000000000000000004000000000000000000000000000000
000000000000000000000000000000000000000000a0000000000000000000000000000000000700000000000000000000200000000000000000000000000000
000000000000000000000000000000000000000000a8000000000000000000000000000000007000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000706000000000000000000000000000000700000000000000000000000f0000000000000000000000000000
000000000000000000000000000000000000000000700400000000000000000000000000007000000000000000000000000e0000000000000000000000000000
000000000000000000000000000000000000000000300020000000000000000000000000070000000000000000000000000f0000000000000000000000000000
00000000000000000000000000000000000000000040000000000000000000000000000070000000000000000000000000040000000000000000000000000000
000000000000000000000000000000000000000000800000e0000000000000000000000770000000000000000000000000050000000000000000000000000000
000000000000000000000000000000000000000000d000000c0000000000000000000070700000000000000000000000000c0000000000000000000000000000
000000000000000000000000000000000000000000f0000000a00000000000000000070030000000000000000000000000040000000000000000000000000000
000000000000000000000000000000000000000000f00000000876543210fedcba98700040000000000000000000000000080000000000000000000000000000
00000000000000000000000000000000000000000040000000000000000000000000000080000000000000000000000000800000000000000000000000000000
000000000000000000000000000000000000000000500000000000000000000000000000d0000000000000000000000008000000000000000000000000000000
000000000000000000000000000000000000000000c00000000000000000000000000000f0000000000000000000000080000000000000000000000000000000
000000000000000000000000000000000000000000400000000000000000000000000000f0000000000000000000000800000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000040000000000000000000008000000000000000000000000000000000
543210fedcba9876543210fedcba9876543210fedcba000000000000000000000000000050000000000000000000080000000000000000000000000000000000
000000000000000050000000000000000000000000008000000000000000000000000000c0000000000000000000800000000000000000000000000000000000
0000000000000000c000000000000000000000000000060000000000000000000000000040000000000000000008000000000000000000000000000000000000
00000000000000004000000000000000000000000000004000000000000000000000000000000000000000000080000000000000000000000000000000000000
00000000000000000000000000000000000000000000004200000000000000000000000000000000000000000800000000000000000000000000000000000000
0000000000000000000000000000000000000000000000500fedcba9876543210000000000000000000000008000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000c000000000000000000e00000000000000000000080000000000000000000000000000000000000000
000000000000000000000000000000000000000000000040000000000000000000c0000000000000000000800000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000a000000000000000008000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000800000000000000080000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000006543210fedcba9800000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000f000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
