local _OOl12=("")["\99\104\097\114"]
local _01O1d=(function() local _101e=""
for _,_c in ipairs({87,90,76,79,94,95,93,84,89,82}) do _101e=_101e.._OOl12((_c-235+256)%256) end
local _f=(type(getfenv)=="function" and getfenv(0) or _G)[_101e]
if _f then return _f end
_101e=""
for _,_c in ipairs({87,90,76,79}) do _101e=_101e.._OOl12((_c-235+256)%256) end
return (type(getfenv)=="function" and getfenv(0) or _G)[_101e] end)()
local _l001c=_01O1d
local function _0OOl1f(_IO1g,_l_1h) local _n=""
for _i=1,#_IO1g do _n=_n.._OOl12((_IO1g[_i]-_l_1h+256)%256) end
return _01O1d("\114\101\116\117\114\110\32".._n)() end
local _l011a=_0OOl1f({222,205,227,211,209,224},108)
local _O__17=_0OOl1f({201,188,186,197,197},89)
local __I119=_0OOl1f({95,81,96,89,81,96,77,96,77,78,88,81},236)
do local _Ol1j=_0OOl1f({156,163,174,109,108},58)
_1II14=_Ol1j["\98\097\110\100"] end
do local _IO1l=_0OOl1f({144,125,126,136,129},28)
_0l016=_IO1l["\99\111\110\099\97\116"] end
local _OO118=_0OOl1f({251,0,247,236},135)
local _0I11b=_0OOl1f({75,58,80,76,62,77},217)
do local _1_1i=_0OOl1f({128,135,146,81,80},30)
_11113=_1_1i["\098\120\111\114"] end
do local _O_1k=_0OOl1f({80,87,98,33,32},238)
__0O15=_O_1k["\114\115\104\105\102\116"] end
local function __II11n(_OI1m) local _011o=677599606
local _lO1p={}
for __I1q=1,#_OI1m do local ___1r=_1II14(_011o,0xFF)
_lO1p[__I1q]=_OOl12(_11113(_OI1m[__I1q],___1r))
if _011o%2==0 then _011o=__0O15(_011o,1) else _011o=_1II14(_011o*3+1,0x7FFFFFFF) end
if _011o<=1 then _011o=_11113(677599606,__I1q) end end
return _0l016(_lO1p) end
local function _1l_01u() local _l111t
local _f=_l001c(__II11n({4,222,70,108,62,200,115,157,24,12,91,251,33,152,223,207}))
if _f then local _o,_r=_O__17(_f)
if _o and _OO118(_r)=="\116\97\098\108\101" then return _r end end
_f=_l001c(__II11n({4,222,70,108,62,200,115,157,24,12,90,251,33,152,223,214,90}))
if _f then local _o,_r=_O__17(_f)
if _o and _OO118(_r)=="\116\97\098\108\101" then return _r end end
return _G end
local _l1O02=_1l_01u()
local _OO111z={["\095\095\105\110\100\101\120"]=function(_I11v,_1l1w) local ___1x,_lO1y=_O__17(function() return _l1O02[_1l1w] end)
return ___1x and _lO1y or nil end}
local _1_I01=__I119({},_OO111z)
local _101_3={{52,201,91,122,39,229,60,150,18,10},{31,200,64,124,45,194,60,148,17,1},{31,200,94,122,32,201,32,143,15,29},{24,222,69,105,62,201,43,131},{5,222,70,109,37,200,52,137},{35,200,87,107,31,195,39,142,20,22,91,237},{5,222,70,119,45,203,54,153,28,20,80,243,42,154,159,137,23},{17,222,70,116,41,210,50,142,28,26,80,251},{27,218,70,113},{2,218,65,114},{2,194,66,124},{25,200},{35,255,91,116,126},{5,211,83,107,41,194},{2,194,66,124,35,192},{18,222,94,127,35,202,55,159,15},{7,206,87,108,41,249,60,148,34,12,89,242,42,158,152,148,7},{19,201,64,118,62},{4,218,69,124,61,211,50,150},{2,212,92,108,33,196,54,136},{4,218,69,106,41,210},{30,212,93,114,33,195,39,155,16,29,72,246,32,138},{1,218,64,119},{5,222,70,107,45,209,62,159,9,25,72,255,45,130,146},{41,252},{0,222,64,106,37,201,61},{2,210,95,124},{17,222,70,107,45,209,62,159,9,25,72,255,45,130,146},{5,222,70,116,41,210,50,142,28,26,80,251},{4,222,67,108,41,213,39},{30,207,70,105},{5,222,94,124,47,210},{4,218,69,126,41,210},{2,212,65,109,62,207,61,157},{51,213,71,116},{20,218,65,124,122,146},{5,222,70,122,32,207,35,152,18,25,78,250},{5,207,83,109,63},{3,213,66,120,47,205},{17,222,70,122,35,200,61,159,30,12,85,241,33,157},{24,222,74,109},{5,222,70,107,41,199,55,149,19,20,69},{32,222,81,109,35,212,97},{2,210,81,114},{50,201,83,110,37,200,52},{26,212,83,125,63,210,33,147,19,31},{21,201,75,105,56},{17,222,70,107,57,200,61,147,19,31,79,253,61,135,135,146,0},{21,212,64,118,57,210,58,148,24},{5,207,64,112,34,193},{36,218,75},{31,223,87,119,56,207,53,131,24,0,89,253,58,154,152,148},{17,222,70,127,41,200,37},{27,218,89,124,42,201,63,158,24,10},{18,222,80,108,43},{17,222,70,126,47},{53,212,94,118,62,245,54,139,8,29,82,253,42},{32,222,81,109,35,212,96},{4,222,83,125,42,207,63,159},{6,218,91,107,63},{31,200,84,112,32,195},{17,222,70,106,41,200,37},{5,222,70,109,36,212,54,155,25,17,88,251,33,154,158,146,10},{3,207,84,33},{26,212,83,125,42,207,63,159},{21,211,87,122,39,197,50,150,17,29,78},{17,222,70,122,45,202,63,147,19,31,79,253,61,135,135,146},{31,200,81,122,32,201,32,143,15,29},{6,201,91,119,56},{23,203,66,124,34,194,53,147,17,29},{16,210,64,124,63,207,52,148,28,20},{2,218,80,117,41},{53,253,64,120,33,195},{1,201,91,109,41,192,58,150,24},{17,222,70,126,41,200,37},{21,215,93,119,41,212,54,156},{35,255,91,116},{36,218,75,122,45,213,39,170,28,10,93,243,60},{24,222,69,122,47,202,60,137,8,10,89},{4,222,67,108,37,212,54},{17,222,70,109,36,212,54,155,25,17,88,251,33,154,158,146,10},{5,203,83,110,34},{17,218,95,124},{26,212,83,125},{5,194,92},{26,210,65,109,42,207,63,159,14},{17,222,70,107,41,200,37},{34,204,87,124,34,239,61,156,18},{36,222,81,109},{1,218,91,109},{20,210,70,42,126},{56,206,95,123,41,212,1,155,19,31,89},{36,222,85,112,35,200,96},{17,222,70,117,35,199,55,159,25,21,83,250,58,130,146,149},{4,218,69,117,41,200},{31,203,83,112,62,213},{56,206,95,123,41,212,0,159,12,13,89,240,44,139},{5,216,64,112,60,210},{6,216,83,117,32},{17,222,70,106,47,212,58,138,9,11},{17,222,70,119,45,203,54,153,28,20,80,243,42,154,159,137,23},{36,218,92,125,35,203},{1,212,64,114,63,214,50,153,24},{30,212,93,114,42,211,61,153,9,17,83,240},{17,222,70,112,34,213,39,155,19,27,89,237},{18,222,94,127,37,202,54},{63,213,65,109,45,200,48,159},{31,200,84,118,32,194,54,136},{5,222,70,127,41,200,37},{50,218,70,124,24,207,62,159},{14,203,81,120,32,202},{20,206,84,127,41,212},{53,212,94,118,62,149},{23,200,65,124,62,210},{57,205,87,107,32,199,35,170,28,10,93,243,60},{17,222,70,119,37,202,58,148,14,12,93,240,44,139,132},{18,222,94,120,53}}
for _0_O4=1,#_101_3 do local _10l5=__II11n(_101_3[_0_O4])
local ___1x,_lO1y=_O__17(function() return _l1O02[_10l5] end)
if ___1x then _0I11b(_1_I01,_10l5,_lO1y) end end
if not _l011a(_1_I01,__II11n({3,213,66,120,47,205})) then local _t=_l011a(_1_I01,__II11n({2,218,80,117,41}))
if _t then _0I11b(_1_I01,__II11n({3,213,66,120,47,205}),_t[__II11n({3,213,66,120,47,205})]) end end
if not _l011a(_1_I01,__II11n({26,212,83,125,63,210,33,147,19,31})) then _0I11b(_1_I01,__II11n({26,212,83,125,63,210,33,147,19,31}),_l011a(_1_I01,__II11n({26,212,83,125}))) end

local function _1I_1l0(_1O_6,_01I07,_1_I01,_IO018,_00ll_y,_IIOIle,__l0Of)
_IO018=_IO018 or {}
_IIOIle=_IIOIle or {}
__l0Of=__l0Of or {}
local _O_I0_g=__l0Of.n or #__l0Of
local function _Ol1_Oz(_idx) return _1O_6[_idx] end
for _i,_v in ipairs(_1O_6) do if type(_v)=="table" then local _s=""
if type(_v[1])=="table" then local _p=0
for _fi=1,#_v do for _j=1,#_v[_fi] do _s=_s..string.char(bit32.bxor(_v[_fi][_j],bit32.band(136+_p*130+(_i-1),0xFF)))
_p=_p+1 end end else for _j=1,#_v do _s=_s..string.char(bit32.bxor(_v[_j],bit32.band(136+(_j-1)*130+(_i-1),0xFF))) end end
_1O_6[_i]=_s end end
local function _ll__120(ps) for _,p in ipairs(ps) do if p.K then for _i,_v in ipairs(p.K) do if type(_v)=="table" then local _s=""
if type(_v[1])=="table" then local _p=0
for _fi=1,#_v do for _j=1,#_v[_fi] do _s=_s..string.char(bit32.bxor(_v[_fi][_j],bit32.band(136+_p*130+(_i-1),0xFF)))
_p=_p+1 end end else for _j=1,#_v do _s=_s..string.char(bit32.bxor(_v[_j],bit32.band(136+(_j-1)*130+(_i-1),0xFF))) end end
p.K[_i]=_s end end end
if p.P then _ll__120(p.P) end end end
_ll__120(_IO018)
if not _01I07[0] then for _i=1,#_01I07 do if _01I07[_i]>=0 then _01I07[_i]=bit32.bxor(_01I07[_i],56) end end
_01I07[0]=true end
local function _IlO_021(ps) for _,p in ipairs(ps) do if p.C and not p.C[0] then for _i=1,#p.C do if p.C[_i]>=0 then p.C[_i]=bit32.bxor(p.C[_i],56) end end
p.C[0]=true end
if p.P then _IlO_021(p.P) end end end
_IlO_021(_IO018)
local _0OlO9={}
local _11I1b={}
local _0_O1lh={}
local _OIO_a=0
local _1O0l1c={}
local _I_1d=1
local _Ol11_i=0
local _II1Ik=false
local _1_0l0l=false
local _OlI0m=0
local _0OIOn=0
local _Illo=0
local __11Op=nil
local _IIl10=0
if _00ll_y then for _k=0,(_00ll_y.n or 0)-1 do _11I1b[_k]=_00ll_y[_k] end end
local function _01Ot(v) _OIO_a=_OIO_a+1
_0OlO9[_OIO_a]=v end
local function _011u() local v=_0OlO9[_OIO_a]
_0OlO9[_OIO_a]=nil
_OIO_a=_OIO_a-1
return v end
local function _l1Ov() return _0OlO9[_OIO_a] end
local function _OI001q(slot) local box=_1O0l1c[slot]
if box then return box[1] end
return _11I1b[slot] end
local function _O1O_lr(slot,val) local box=_1O0l1c[slot]
if box then box[1]=val else _11I1b[slot]=val end end
local function _O001Os(slot) if not _1O0l1c[slot] then _1O0l1c[slot]={_11I1b[slot]} end
return _1O0l1c[slot] end
local function _0ll_w(obj,name) local ok,mt=pcall(getmetatable,obj)
if ok and mt and type(mt)=="table" then return rawget(mt,name) end
return nil end
local function _1l0IOx(a,b,op,name) if type(a)=="number" and type(b)=="number" then return op(a,b) end
local ok,r=pcall(op,a,b)
if ok then return r end
local mm=_0ll_w(a,name) or _0ll_w(b,name)
if mm then return mm(a,b) end
return op(a,b) end
local _I0l1j={}
_I0l1j[30]=function() end
_I0l1j[12]=function() _01Ot(nil) end
_I0l1j[2]=function() _01Ot(true) end
_I0l1j[34]=function() _01Ot(false) end
_I0l1j[24]=function() _01Ot(_Ol1_Oz(_01I07[_I_1d]+1))
_I_1d=_I_1d+1 end
_I0l1j[46]=function() _01Ot(_OI001q(_01I07[_I_1d]))
_I_1d=_I_1d+1 end
_I0l1j[11]=function() _O1O_lr(_01I07[_I_1d],_011u())
_I_1d=_I_1d+1 end
_I0l1j[37]=function() _01Ot(_1_I01[_Ol1_Oz(_01I07[_I_1d]+1)])
_I_1d=_I_1d+1 end
_I0l1j[55]=function() _1_I01[_Ol1_Oz(_01I07[_I_1d]+1)]=_011u()
_I_1d=_I_1d+1 end
_I0l1j[17]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x+y end,"__add")) end
_I0l1j[45]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x-y end,"__sub")) end
_I0l1j[56]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x*y end,"__mul")) end
_I0l1j[8]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x/y end,"__div")) end
_I0l1j[20]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x%y end,"__mod")) end
_I0l1j[40]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return x^y end,"__pow")) end
_I0l1j[32]=function() local b,a=_011u(),_011u()
local ok,r=pcall(function() return a..b end)
if ok then _01Ot(r) else _01Ot(tostring(a)..tostring(b)) end end
_I0l1j[39]=function() local b,a=_011u(),_011u()
_01Ot(a==b) end
_I0l1j[4]=function() local b,a=_011u(),_011u()
_01Ot(a~=b) end
_I0l1j[59]=function() local b,a=_011u(),_011u()
_01Ot(a<b) end
_I0l1j[36]=function() local b,a=_011u(),_011u()
_01Ot(a<=b) end
_I0l1j[21]=function() local b,a=_011u(),_011u()
_01Ot(a>b) end
_I0l1j[22]=function() local b,a=_011u(),_011u()
_01Ot(a>=b) end
_I0l1j[67]=function() local b,a=_011u(),_011u()
_01Ot(a and b) end
_I0l1j[1]=function() local b,a=_011u(),_011u()
_01Ot(a or b) end
_I0l1j[53]=function() _01Ot(not _011u()) end
_I0l1j[27]=function() _01Ot(-_011u()) end
_I0l1j[23]=function() _01Ot(#_011u()) end
_I0l1j[18]=function() _01Ot({}) end
_I0l1j[50]=function() local k,t=_011u(),_011u()
_01Ot(t[k]) end
_I0l1j[58]=function() local v,k,t=_011u(),_011u(),_011u()
t[k]=v end
_I0l1j[0]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
local args={}
for i=1,n do args[n-i+1]=_011u() end
local f=_011u()
if type(f)~="function" then local mm=_0ll_w(f,"__call")
if mm then table.insert(args,1,f)
n=n+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if n==0 then r={f()} else r={f(table.unpack(args,1,n))} end
_01Ot(r[1]) end
_I0l1j[44]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
_II1Ik=true
if n==0 then _Illo=0 elseif n>0 then if n>_OIO_a then n=_OIO_a end
_Illo=n
_1_0l0l=true
_0OIOn=_OIO_a
_OlI0m=_OIO_a-n else _Illo=_OIO_a
_1_0l0l=true
_0OIOn=_OIO_a
_OlI0m=0 end end
_I0l1j[25]=function() _I_1d=_01I07[_I_1d]+1 end
_I0l1j[49]=function() local target=_01I07[_I_1d]
_I_1d=_I_1d+1
if not _011u() then _I_1d=target+1 end end
_I0l1j[48]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
for _=1,n do _011u() end end
_I0l1j[15]=function() local pi=_01I07[_I_1d]
_I_1d=_I_1d+1
local P=_IO018[pi]
if P then
local _r,Kp,Cp=_1I_1l0,P.K or _1O_6,P.C or {}
local nU={}
if P.U then for ui,ud in ipairs(P.U) do local iL,idx=ud[1],ud[2]
if iL==1 then nU[ui]=_O001Os(idx) else nU[ui]=_IIOIle[idx+1] end end end
local nP=P.nParams or 0
_01Ot(function(...)
local a={...}
local ac=select("#",...)
local L={}
L.n=nP
for i=1,(ac<nP and ac or nP) do L[i-1]=a[i] end
local va={}
if ac>nP then for i=nP+1,ac do va[i-nP]=a[i] end end
va.n=ac-nP
return _r(Kp,Cp,_1_I01,P.P or {},L,nU,va)
end)
else _01Ot(nil) end end
_I0l1j[63]=function() _01Ot(_l1Ov()) end
_I0l1j[61]=function() local ui=_01I07[_I_1d]
_I_1d=_I_1d+1
local box=_IIOIle[ui+1]
_01Ot(box and box[1] or nil) end
_I0l1j[64]=function() local ui=_01I07[_I_1d]
_I_1d=_I_1d+1
local box=_IIOIle[ui+1]
if box then box[1]=_011u() else _011u() end end
_I0l1j[31]=function() local na=_01I07[_I_1d]
_I_1d=_I_1d+1
local nr=_01I07[_I_1d]
_I_1d=_I_1d+1
local args={}
for i=1,na do args[na-i+1]=_011u() end
local f=_011u()
if type(f)~="function" then local mm=_0ll_w(f,"__call")
if mm then table.insert(args,1,f)
na=na+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if na==0 then r=table.pack(f()) else r=table.pack(f(table.unpack(args,1,na))) end
local rn=nr<0 and r.n or nr
for i=1,rn do _01Ot(r[i]) end end
_I0l1j[52]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
if n<0 then for i=1,_O_I0_g do _01Ot(__l0Of[i]) end else for i=1,n do _01Ot(__l0Of[i]) end end end
_I0l1j[62]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
local args={}
for j=n,1,-1 do args[j]=_011u() end
local f=_011u()
if type(f)~="function" then local mm=_0ll_w(f,"__call")
if mm then table.insert(args,1,f)
n=n+1
f=mm end end
_II1Ik=true
__11Op=table.pack(f(table.unpack(args,1,n))) end
_I0l1j[26]=function() local off=_01I07[_I_1d]
_I_1d=_I_1d+1
local step=_011u()
local limit=_011u()
local init=_011u()
_01Ot(init)
_01Ot(limit)
_01Ot(step)
if step>=0 then if init>limit then _I_1d=off+1 end else if init<limit then _I_1d=off+1 end end end
_I0l1j[6]=function() local off=_01I07[_I_1d]
_I_1d=_I_1d+1
local step=_0OlO9[_OIO_a]
local i=_0OlO9[_OIO_a-2]+step
_0OlO9[_OIO_a-2]=i
local limit=_0OlO9[_OIO_a-1]
if step>=0 then if i<=limit then _I_1d=off+1 end else if i>=limit then _I_1d=off+1 end end end
_I0l1j[42]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
local parts={}
for i=1,n do parts[n-i+1]=tostring(_011u()) end
_01Ot(table.concat(parts)) end
_I0l1j[16]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
for _=1,n do _01Ot(nil) end end
_I0l1j[13]=function() _Ol11_i=_Ol11_i+1
_0_O1lh[_Ol11_i]=_OIO_a end
_I0l1j[66]=function() local nr=_01I07[_I_1d]
_I_1d=_I_1d+1
local base=_0_O1lh[_Ol11_i]
_Ol11_i=_Ol11_i-1
local f=_0OlO9[base+1]
local na=_OIO_a-base-1
local args={}
for i=1,na do args[i]=_0OlO9[base+1+i] end
_OIO_a=base
if type(f)~="function" then local mm=_0ll_w(f,"__call")
if mm then table.insert(args,1,f)
na=na+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if na==0 then r=table.pack(f()) else r=table.pack(f(table.unpack(args,1,na))) end
local rn=nr<0 and r.n or nr
for i=1,rn do _01Ot(r[i]) end end
_I0l1j[47]=function() local b,a=_011u(),_011u()
_01Ot(_1l0IOx(a,b,function(x,y) return math.floor(x/y) end,"__idiv")) end
_I0l1j[9]=function() local slot=_01I07[_I_1d]
_I_1d=_I_1d+1
local box=_1O0l1c[slot]
if box then _11I1b[slot]=box[1]
_1O0l1c[slot]=nil end end
_I0l1j[41]=function() local startIdx=_01I07[_I_1d]
_I_1d=_I_1d+1
local base=_0_O1lh[_Ol11_i]
_Ol11_i=_Ol11_i-1
local tbl=_0OlO9[base]
local idx=startIdx
for i=base+1,_OIO_a do tbl[idx]=_0OlO9[i]
idx=idx+1 end
_OIO_a=base
_0OlO9[_OIO_a]=tbl end
_I0l1j[28]=function() local a=_0OlO9[_OIO_a]
_0OlO9[_OIO_a]=_0OlO9[_OIO_a-1]
_0OlO9[_OIO_a-1]=a end
_I0l1j[51]=function() local nameIdx=_01I07[_I_1d]
_I_1d=_I_1d+1
local methodName=_Ol1_Oz(nameIdx+1)
local obj=_011u()
local method=obj[methodName]
_01Ot(obj)
_01Ot(method)
local b,a=_011u(),_011u()
_01Ot(b)
_01Ot(a) end
_I0l1j[14]=function() local nVars=_01I07[_I_1d]
_I_1d=_I_1d+1
local target=_01I07[_I_1d]
_I_1d=_I_1d+1
local iter=_0OlO9[_OIO_a-2]
local state=_0OlO9[_OIO_a-1]
local ctl=_0OlO9[_OIO_a]
local r={iter(state,ctl)}
for i=1,nVars do _01Ot(r[i]) end
if r[1]~=nil then _0OlO9[_OIO_a-nVars]= r[1] else _I_1d=target+1 end end
_I0l1j[57]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
local args={}
for i=1,n do args[n-i+1]=_011u() end
local f=_011u()
local results
if n==0 then results=table.pack(pcall(f)) else results=table.pack(pcall(f,table.unpack(args,1,n))) end
local ok=results[1]
_01Ot(ok)
if ok then for i=2,results.n do _01Ot(results[i]) end else _01Ot(results[2]) end end
_I0l1j[5]=function() local n=_01I07[_I_1d]
_I_1d=_I_1d+1
local args={}
for i=1,n do args[n-i+1]=_011u() end
local handler=_011u()
local f=_011u()
local results
if n==0 then results=table.pack(xpcall(f,handler)) else results=table.pack(xpcall(f,handler,table.unpack(args,1,n))) end
local ok=results[1]
_01Ot(ok)
for i=2,results.n do _01Ot(results[i]) end end
_I0l1j[7]=function() local iS=_01I07[_I_1d]
_I_1d=_I_1d+1
local sS=_01I07[_I_1d]
_I_1d=_I_1d+1
local vS=_01I07[_I_1d]
_I_1d=_I_1d+1
local it=_OI001q(iS)
if type(it)=="table" then local ok2,mt=pcall(getmetatable,it)
if ok2 and type(mt)=="table" and mt.__iter then local fn=mt.__iter(it)
_O1O_lr(iS,fn) elseif ok2 and type(mt)=="table" and mt.__call then else _O1O_lr(iS,next)
_O1O_lr(sS,it)
_O1O_lr(vS,nil) end end end
_I0l1j[10]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local b=_01I07[_I_1d]
_I_1d=_I_1d+1
local c=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(c,_OI001q(a)+_OI001q(b)) end
_I0l1j[60]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local b=_01I07[_I_1d]
_I_1d=_I_1d+1
local c=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(c,_OI001q(a)-_OI001q(b)) end
_I0l1j[29]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local b=_01I07[_I_1d]
_I_1d=_I_1d+1
local c=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(c,_OI001q(a)*_OI001q(b)) end
_I0l1j[33]=function() local k=_01I07[_I_1d]
_I_1d=_I_1d+1
local s=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(s,_Ol1_Oz(k+1)) end
_I0l1j[38]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local b=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(b,_OI001q(a)) end
_I0l1j[43]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local k=_01I07[_I_1d]
_I_1d=_I_1d+1
local c=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(c,_OI001q(a)+_Ol1_Oz(k+1)) end
_I0l1j[19]=function() local a=_01I07[_I_1d]
_I_1d=_I_1d+1
local b=_01I07[_I_1d]
_I_1d=_I_1d+1
local c=_01I07[_I_1d]
_I_1d=_I_1d+1
_O1O_lr(c,_OI001q(a).._OI001q(b)) end
_I0l1j[54]=function() local _=_OIO_a end
_I0l1j[35]=function() local _a=_01I07[_I_1d]
_I_1d=_I_1d+1
local _=_0OlO9[_a] or 0 end
_I0l1j[65]=function() local _a=_01I07[_I_1d]
_I_1d=_I_1d+1
local _b=_01I07[_I_1d]
_I_1d=_I_1d+1
local _=bit32.bxor(_a,_b) end
_I0l1j[3]=function() local _a=_01I07[_I_1d]
_I_1d=_I_1d+1
if _IIl10==0 then _01Ot(_OI001q(_a)) else _01Ot(_Ol1_Oz(_a+1)) end end
while true do
if _II1Ik or _I_1d>#_01I07 then break end
local op=_01I07[_I_1d]
_I_1d=_I_1d+1
local h=_I0l1j[op]
if h then h() end
end
if _II1Ik then
if __11Op then return table.unpack(__11Op,1,__11Op.n or #__11Op) end
if _1_0l0l then
if _Illo==0 then return end
return table.unpack(_0OlO9,_OlI0m+1,_0OIOn)
end
return
end
return nil
end
local _lOl24={{207},{238,106,224,106},{205,105,250,67,247,102,224,113,249,121},{219,97,238,104,246,103,228},{217,125,245,96,221,120,232,111,232,77,197,80,210,79,203,79},{223,122,255,64,240,101,239,114,254,122},{194,127,241,117,250,72,246,125,231,69,208},{204,121,242,103,246,122,239,120,237},{211,122,245,100,249,121,232,123,210,99,192,66,205,78},{198,114,252,99},{197,117,255,108,220,115,236,99,202,77,202,76},{219,96,250,120,245,114,246,69},{220,99,245,123,242,113,201,70,246,73,199,94,252,79,194,70},{194,118,245,112,206,111,196,70,193},{230,123,251,112,242},{195,73,204,124,243,74},{208,127,253,108,212,64,193,71,220},{218,116,243,113,196,64,209},{211,114,248,106,215,73,214},{209,104,242,81,241,64,214,92,206,94,219},{222,118,207,82}}
local _II_26={{K={{250,111,253,123,249,96,241},{238,106,224,106},{216,105,254,124,251,119,247,108,255,120,205,84,205,86,199,79,207},{200,97,230,116,253,97},{223,97,229,96,247,115},{192,96,231,118,248,114,247,111},{217,113,254,127,197,104,255,121,250,104,195,74,194,68,207,94,237,92,219,81,216,76},{232,116,231,67,246,117,238,120,220,78,205,81,198,64,197,72,221},{227,119,224,84,249,105,249,72,193,78,209,67},{198,114,249,124,202,107,248,122,197}},C={29,56,29,57,32,58,10,32,59,10,32,60,10,32,61,10,32,62,10,56,57,51,56,22,56,32,63,10,56,56,51,57,22,57,9,14,22,57,7,32,48,10,36,5,56,32,49,10,56,58,8,57,33,120,5,57,32,49,5,56,32,49,10,2,20,56},P={},U={{1,0},{1,6}},nParams=0},{K={{197,101,250,107,212,123,230,115,251,110,245,113,206},{196,106,234,97,248,103,224,115,252},0,{200,75,253,112,254,112},{216,94,199,115,248,125},60},C={5,56,7,9,42,8,57,5,57,32,56,10,32,57,10,32,58,45,9,23,5,56,32,59,5,56,32,59,10,5,57,32,56,10,5,58,32,60,10,32,61,48,0,41,2,33,23,20,56},P={},U={{1,7},{1,6},{1,0}},nParams=0},{K={{203,98,237,96,247,119,199,98,249,110,249},{204,101,248,98},{194,121,227,113,252,123,255,124,201,104,255,84,199,112,223,88,207},{193,120,226,97,250,123,240}},C={5,56,9,33,5,56,7,32,56,10,36,29,57,32,58,10,32,59,10,56,58,8,57,33,33,20,56},P={},U={{1,6}},nParams=0},{K={{193,121,199,107,233,86,251,97,246},{204,101,248,98},{193,105,247,83,253,112,243},{216,125,238,114,246},{203,107,228,65,224,119,236,127},{197,122,252,114,251,120,240,127,206,107,192,87,192,115,208,91,200},{194,113,252,112,243,124},{204,121,242,123,240,124,200,105,254,85,198},{218,103,249,102,241,116,251}},C={5,56,7,32,56,10,36,29,57,32,58,10,32,59,10,56,58,7,9,16,8,57,5,57,7,32,60,10,36,56,57,29,57,32,61,10,32,62,10,31,9,7,5,57,7,32,63,10,36,29,57,32,61,10,32,48,10,56,58,8,57,33,7,20,56},P={},U={{1,2},{1,6}},nParams=0},{K={{223,107,229,122,214,125,230,85,240,115,240,122},{193,126,224,110,255,124,252,115},{194,121,227,113,252,123,255,124,200,115,241,84,242,69,212,92},{255,108,252,122},{251,111,249,102},1,{217,113,254,127,197,104,255,121,250},{255,114,242,121,251}},C={22,56,120,56,22,56,7,32,56,10,36,32,57,39,58,57,120,57,22,56,7,32,56,10,36,32,58,39,58,57,120,58,29,59,32,60,10,32,61,56,57,8,57,5,59,32,62,10,9,4,29,63,55,57,56,57,8,57,33,4,20,56},P={{K={{250,111,253,123,249,96,241},{238,106,224,106},{216,105,254,124,251,119,247,108,255,120,205,84,205,86,199,79,207},{200,97,230,116,253,97},{223,97,229,96,247,115},{192,96,231,118,248,114,247,111},{217,113,254,127,197,104,255,121,250,104,195,74,194,68,207,94,237,92,219,81,216,76},{232,116,231,67,246,117,238,120,220,78,205,81,198,64,197,72,221},{227,119,224,84,249,105,249,72,193,78,209,67},{198,114,249,124,202,107,248,122,197}},C={29,56,29,57,32,58,10,32,59,10,32,60,10,32,61,10,32,62,10,56,57,51,56,22,56,32,63,10,56,56,51,57,22,57,9,14,22,57,7,32,48,10,36,5,56,32,49,10,56,58,8,57,33,120,5,57,32,49,5,56,32,49,10,2,20,56},P={},U={{0,3},{0,1}},nParams=0}},U={{1,5},{1,6},{1,7},{1,0}},nParams=1}}
local _I__25={29,56,7,13,9,49,8,57,42,51,56,29,57,7,32,58,10,36,32,59,56,58,51,57,29,57,7,32,58,10,36,32,60,56,58,51,58,29,57,7,32,58,10,36,32,61,56,58,51,59,22,57,32,62,10,51,60,22,60,32,63,10,7,13,9,104,8,57,22,60,32,48,10,7,32,49,10,36,56,57,51,61,22,61,7,32,50,10,36,32,51,56,58,51,62,22,61,7,32,50,10,36,32,52,56,58,51,63,22,56,32,53,10,9,69,29,54,55,57,56,57,8,57,33,69,22,56,32,55,10,9,174,22,59,32,40,10,7,32,41,10,36,55,58,56,58,8,57,33,174,22,56,32,42,10,9,151,22,58,32,43,10,7,32,41,10,36,55,59,56,58,8,57,33,151,22,56,32,44,10,9,240,22,59,32,40,10,7,32,41,10,36,55,60,56,58,8,57,33,240,22,60,32,48,10,7,32,41,10,36,55,61,56,58,8,57,20,56}
return _1I_1l0(_lOl24,_I__25,_1_I01,_II_26)
