local _I_012=("")["\099\104\097\114"]
local _01I1d=(function() local _111e=""
for _,_c in ipairs({5,8,250,253,12,13,11,2,7,0}) do _111e=_111e.._I_012((_c-153+256)%256) end
local _f=(type(getfenv)=="function" and getfenv(0) or _G)[_111e]
if _f then return _f end
_111e=""
for _,_c in ipairs({5,8,250,253}) do _111e=_111e.._I_012((_c-153+256)%256) end
return (type(getfenv)=="function" and getfenv(0) or _G)[_111e] end)()
local _0lO1c=_01I1d
local function _II__1f(_Il1g,_l_1h) local _n=""
for _i=1,#_Il1g do _n=_n.._I_012((_Il1g[_i]-_l_1h+256)%256) end
return _01I1d("\114\101\116\117\114\110\032".._n)() end
local _O1_1b=_II__1f({14,253,19,15,1,16},156)
do local _ll1l=_II__1f({13,250,251,5,254},153)
_11I16=_ll1l["\099\111\110\099\97\116"] end
local __O117=_II__1f({122,109,107,118,118},10)
local _llI18=_II__1f({22,27,18,7},162)
do local _1I1i=_II__1f({42,49,60,251,250},200)
_I0O13=_1I1i["\98\120\111\114"] end
do local _l11k=_II__1f({116,123,134,69,68},18)
_OI_15=_l11k["\114\115\104\105\102\116"] end
do local _0O1j=_II__1f({26,33,44,235,234},184)
_II014=_0O1j["\098\097\110\100"] end
local _0001a=_II__1f({228,211,233,217,215,230},114)
local _OI_19=_II__1f({156,142,157,150,142,157,138,157,138,139,149,142},41)
local function _1lIO1n(_l01m) local _0_1o=356190355
local _l01p={}
for __l1q=1,#_l01m do local _Il1r=_II014(_0_1o,0xFF)
_l01p[__l1q]=_I_012(_I0O13(_l01m[__l1q],_Il1r))
if _0_1o%2==0 then _0_1o=_OI_15(_0_1o,1) else _0_1o=_II014(_0_1o*3+1,0x7FFFFFFF) end
if _0_1o<=1 then _0_1o=_I0O13(356190355,__l1q) end end
return _11I16(_l01p) end
local function _IIOI1u() local _00_1t
local _f=_0lO1c(_1lIO1n({225,223,169,237,62,200,243,29,88,204,187,11,217,80,187,147}))
if _f then local _o,_r=__O117(_f)
if _o and _llI18(_r)=="\116\097\098\108\101" then return _r end end
_f=_0lO1c(_1lIO1n({225,223,169,237,62,200,243,29,88,204,186,11,217,80,187,138,244}))
if _f then local _o,_r=__O117(_f)
if _o and _llI18(_r)=="\116\097\098\108\101" then return _r end end
return _G end
local __l112=_IIOI1u()
local ___001=_OI_19({},{["\95\95\105\110\100\101\120"]=function(_I11v,_lO1w) local _l11x,_I11y=__O117(function() return __l112[_lO1w] end)
if _l11x then return _I11y end
return nil end})
local __llO3={{253,223,170,251,47,202,188,9,72,202,185},{193,219,179,252,35,203},{199,205,184,253,34,239,189,28,82},{230,212,173,249,47,205},{224,223,169,251,32,207,163,24,82,217,174,10},{224,223,169,246,45,203,182,25,92,212,176,3,210,82,251,213,185},{255,213,188,252,63,210,161,19,83,223},{253,223,170,232,62,201,171,3},{224,210,188,234,41,194},{235,202,190,249,32,202},{255,213,188,252,42,207,191,31},{198,254,180,245,126},{231,211,190,243},{242,202,173,253,34,194,181,19,81,221},{228,200,180,236,41,192,186,22,88},{244,223,169,251,45,202,191,19,83,223,175,13,197,79,227,206},{231,219,191,244,41},{227,200,180,246,56},{220,204,184,234,32,199,163,42,92,202,189,3,196},{231,213,174,236,62,207,189,29},{244,223,169,234,57,200,189,19,83,223,175,13,197,79,227,206,174},{225,219,170,244,41,200},{247,223,177,254,37,202,182},{193,219,164},{228,219,180,236},{245,211,175,253,63,207,180,20,92,212},{230,206,187,160},{240,200,164,232,56},{225,219,170,255,41,210},{242,201,174,253,62,210},{226,207,184,237,41,249,188,20,98,204,185,2,210,86,252,200,169},{246,200,175,247,62},{244,223,169,234,45,209,190,31,73,217,168,15,213,74,246},{244,223,169,245,41,210,178,14,92,218,176,11},{215,219,169,253,24,207,190,31},{250,201,187,241,32,195},{250,201,175,253,45,194,188,20,81,193},{224,223,177,253,47,210},{225,223,188,252,42,207,191,31},{240,214,178,246,41,212,182,28},{231,219,174,243},{244,223,169,255,47},{224,206,188,236,63},{244,223,169,246,45,203,182,25,92,212,176,3,210,82,251,213,185},{231,211,176,253},{225,219,170,253,61,211,178,22},{224,195,179},{221,207,176,250,41,212,128,31,76,205,185,0,212,67},{221,207,176,250,41,212,129,27,83,223,185},{215,200,188,239,37,200,180},{228,213,175,243,63,214,178,25,88},{240,213,175,247,57,210,186,20,88},{224,223,169,254,41,200,165},{241,207,187,254,41,212},{231,195,173,253},{250,201,190,251,32,201,160,15,79,221},{225,219,170,235,41,210},{231,213,179,237,33,196,182,8},{244,223,169,241,34,213,167,27,83,219,185,29},{252,201},{193,223,186,241,35,200,224},{225,223,172,237,37,212,182},{244,223,169,251,35,200,189,31,94,204,181,1,217,85},{224,202,188,239,34},{253,223,165,236},{244,223,169,254,41,200,165},{198,254,180,245},{244,223,169,235,41,200,165},{225,223,172,237,41,213,167},{209,200,180,251,39,229,188,22,82,202},{193,223,190,236},{231,195,173,253,35,192},{204,253},{244,223,169,234,41,200,165},{208,213,177,247,62,245,182,11,72,221,178,13,210},{224,223,169,234,45,209,190,31,73,217,168,15,213,74,246},{224,223,169,234,41,199,183,21,83,212,165},{247,223,177,254,35,202,183,31,79},{208,252,175,249,33,195},{208,213,177,247,62,149},{255,211,174,236,42,207,191,31,78},{229,223,175,235,37,201,189},{254,219,182,253,42,201,191,30,88,202},{214,212,168,245},{218,212,174,236,45,200,176,31},{244,223,169,236,36,212,182,27,89,209,184,11,217,82,250,206,164},{255,213,188,252},{247,223,177,249,53},{251,206,169,232},{241,211,169,171,126},{227,219,180,234,63},{198,201,184,234,31,195,167,14,84,214,187,29},{224,223,169,245,41,210,178,14,92,218,176,11},{247,223,191,237,43},{224,223,169,236,36,212,182,27,89,209,184,11,217,82,250,206,164},{224,223,169,236,37,200,180,9},{228,219,175,246},{254,219,169,240},{244,219,176,253},{250,202,188,241,62,213},{244,223,169,235,47,212,186,10,73,203},{250,201,177,251,32,201,160,15,79,221},{244,223,169,246,37,202,186,20,78,204,189,0,212,67,224},{240,210,184,251,39,197,178,22,81,221,174},{224,206,175,241,34,193},{193,219,164,251,45,213,167,42,92,202,189,3,196},{250,222,184,246,56,207,181,3,88,192,185,13,194,82,252,200},{241,219,174,253,122,146},{224,217,175,241,60,210},{250,201,187,247,32,194,182,8},{227,217,188,244,32},{251,213,178,243,33,195,167,27,80,221,168,6,216,66},{251,213,178,243,42,211,189,25,73,209,179,0},{244,223,169,255,41,200,165},{197,223,190,236,35,212,225},{244,223,169,244,35,199,183,31,89,213,179,10,194,74,246,201},{197,223,190,236,35,212,224}}
for _O114=1,#__llO3 do local _IO15=_1lIO1n(__llO3[_O114])
local _l11x,_I11y=__O117(function() return __l112[_IO15] end)
if _l11x then _O1_1b(___001,_IO15,_I11y) end end
if not _0001a(___001,_1lIO1n({230,212,173,249,47,205})) then local _t=_0001a(___001,_1lIO1n({231,219,191,244,41}))
if _t then _O1_1b(___001,_1lIO1n({230,212,173,249,47,205}),_t[_1lIO1n({230,212,173,249,47,205})]) end end
if not _0001a(___001,_1lIO1n({255,213,188,252,63,210,161,19,83,223})) then _O1_1b(___001,_1lIO1n({255,213,188,252,63,210,161,19,83,223}),_0001a(___001,_1lIO1n({255,213,188,252}))) end

local function _O0OI_0(_OIl6,_0IOI7,___001,_1_l18,__OI1Oy,_1IOO1e,_I1__f)
_1_l18=_1_l18 or {}
_1IOO1e=_1IOO1e or {}
_I1__f=_I1__f or {}
local _I_0OOg=_I1__f.n or #_I1__f
local function _I1_1Iz(_idx) return _OIl6[_idx] end
for _i,_v in ipairs(_OIl6) do if type(_v)=="table" then local _s=""
if type(_v[1])=="table" then local _p=0
for _fi=1,#_v do for _j=1,#_v[_fi] do _s=_s..string.char(bit32.bxor(_v[_fi][_j],bit32.band(5+_p*33+(_i-1),0xFF)))
_p=_p+1 end end else for _j=1,#_v do _s=_s..string.char(bit32.bxor(_v[_j],bit32.band(5+(_j-1)*33+(_i-1),0xFF))) end end
_OIl6[_i]=_s end end
local function _O01I11z(ps) for _,p in ipairs(ps) do if p.K then for _i,_v in ipairs(p.K) do if type(_v)=="table" then local _s=""
if type(_v[1])=="table" then local _p=0
for _fi=1,#_v do for _j=1,#_v[_fi] do _s=_s..string.char(bit32.bxor(_v[_fi][_j],bit32.band(5+_p*33+(_i-1),0xFF)))
_p=_p+1 end end else for _j=1,#_v do _s=_s..string.char(bit32.bxor(_v[_j],bit32.band(5+(_j-1)*33+(_i-1),0xFF))) end end
p.K[_i]=_s end end end
if p.P then _O01I11z(p.P) end end end
_O01I11z(_1_l18)
if not _0IOI7[0] then for _i=1,#_0IOI7 do if _0IOI7[_i]>=0 then _0IOI7[_i]=bit32.bxor(_0IOI7[_i],235) end end
_0IOI7[0]=true end
local function _O1lIO20(ps) for _,p in ipairs(ps) do if p.C and not p.C[0] then for _i=1,#p.C do if p.C[_i]>=0 then p.C[_i]=bit32.bxor(p.C[_i],235) end end
p.C[0]=true end
if p.P then _O1lIO20(p.P) end end end
_O1lIO20(_1_l18)
local _OII19={}
local _OIlIb={}
local _0_111h={}
local _OOO0a=0
local _lI0l_c={}
local _ll_d=1
local _011I_i=0
local _O1OOk=false
local _1_lOIl=false
local _lI_Im=0
local _O1l_n=0
local __OOo=0
local _l11_p=nil
local ___010=0
if __OI1Oy then for _k=0,(__OI1Oy.n or 0)-1 do _OIlIb[_k]=__OI1Oy[_k] end end
local function _1__t(v) _OOO0a=_OOO0a+1
_OII19[_OOO0a]=v end
local function __I0u() local v=_OII19[_OOO0a]
_OII19[_OOO0a]=nil
_OOO0a=_OOO0a-1
return v end
local function _l01v() return _OII19[_OOO0a] end
local function _lIll0q(slot) local box=_lI0l_c[slot]
if box then return box[1] end
return _OIlIb[slot] end
local function _1_ll1r(slot,val) local box=_lI0l_c[slot]
if box then box[1]=val else _OIlIb[slot]=val end end
local function _ll_I_s(slot) if not _lI0l_c[slot] then _lI0l_c[slot]={_OIlIb[slot]} end
return _lI0l_c[slot] end
local function _ll1Ow(obj,name) local ok,mt=pcall(getmetatable,obj)
if ok and mt and type(mt)=="table" then return rawget(mt,name) end
return nil end
local function _111IIx(a,b,op,name) if type(a)=="number" and type(b)=="number" then return op(a,b) end
local ok,r=pcall(op,a,b)
if ok then return r end
local mm=_ll1Ow(a,name) or _ll1Ow(b,name)
if mm then return mm(a,b) end
return op(a,b) end
local _11l_j={}
_11l_j[56]=function() end
_11l_j[67]=function() _1__t(nil) end
_11l_j[22]=function() _1__t(true) end
_11l_j[8]=function() _1__t(false) end
_11l_j[60]=function() _1__t(_I1_1Iz(_0IOI7[_ll_d]+1))
_ll_d=_ll_d+1 end
_11l_j[5]=function() _1__t(_lIll0q(_0IOI7[_ll_d]))
_ll_d=_ll_d+1 end
_11l_j[24]=function() _1_ll1r(_0IOI7[_ll_d],__I0u())
_ll_d=_ll_d+1 end
_11l_j[13]=function() _1__t(___001[_I1_1Iz(_0IOI7[_ll_d]+1)])
_ll_d=_ll_d+1 end
_11l_j[18]=function() ___001[_I1_1Iz(_0IOI7[_ll_d]+1)]=__I0u()
_ll_d=_ll_d+1 end
_11l_j[36]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x+y end,"__add")) end
_11l_j[66]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x-y end,"__sub")) end
_11l_j[46]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x*y end,"__mul")) end
_11l_j[11]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x/y end,"__div")) end
_11l_j[35]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x%y end,"__mod")) end
_11l_j[63]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return x^y end,"__pow")) end
_11l_j[30]=function() local b,a=__I0u(),__I0u()
local ok,r=pcall(function() return a..b end)
if ok then _1__t(r) else _1__t(tostring(a)..tostring(b)) end end
_11l_j[23]=function() local b,a=__I0u(),__I0u()
_1__t(a==b) end
_11l_j[14]=function() local b,a=__I0u(),__I0u()
_1__t(a~=b) end
_11l_j[20]=function() local b,a=__I0u(),__I0u()
_1__t(a<b) end
_11l_j[52]=function() local b,a=__I0u(),__I0u()
_1__t(a<=b) end
_11l_j[25]=function() local b,a=__I0u(),__I0u()
_1__t(a>b) end
_11l_j[19]=function() local b,a=__I0u(),__I0u()
_1__t(a>=b) end
_11l_j[65]=function() local b,a=__I0u(),__I0u()
_1__t(a and b) end
_11l_j[28]=function() local b,a=__I0u(),__I0u()
_1__t(a or b) end
_11l_j[33]=function() _1__t(not __I0u()) end
_11l_j[40]=function() _1__t(-__I0u()) end
_11l_j[57]=function() _1__t(#__I0u()) end
_11l_j[48]=function() _1__t({}) end
_11l_j[34]=function() local k,t=__I0u(),__I0u()
_1__t(t[k]) end
_11l_j[16]=function() local v,k,t=__I0u(),__I0u(),__I0u()
t[k]=v end
_11l_j[31]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local args={}
for i=1,n do args[n-i+1]=__I0u() end
local f=__I0u()
if type(f)~="function" then local mm=_ll1Ow(f,"__call")
if mm then table.insert(args,1,f)
n=n+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if n==0 then r={f()} else r={f(table.unpack(args,1,n))} end
_1__t(r[1]) end
_11l_j[55]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_O1OOk=true
if n==0 then __OOo=0 elseif n>0 then if n>_OOO0a then n=_OOO0a end
__OOo=n
_1_lOIl=true
_O1l_n=_OOO0a
_lI_Im=_OOO0a-n else __OOo=_OOO0a
_1_lOIl=true
_O1l_n=_OOO0a
_lI_Im=0 end end
_11l_j[49]=function() _ll_d=_0IOI7[_ll_d]+1 end
_11l_j[51]=function() local target=_0IOI7[_ll_d]
_ll_d=_ll_d+1
if not __I0u() then _ll_d=target+1 end end
_11l_j[44]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
for _=1,n do __I0u() end end
_11l_j[42]=function() local pi=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local P=_1_l18[pi]
if P then
local _r,Kp,Cp=_O0OI_0,P.K or _OIl6,P.C or {}
local nU={}
if P.U then for ui,ud in ipairs(P.U) do local iL,idx=ud[1],ud[2]
if iL==1 then nU[ui]=_ll_I_s(idx) else nU[ui]=_1IOO1e[idx+1] end end end
local nP=P.nParams or 0
_1__t(function(...)
local a={...}
local ac=select("#",...)
local L={}
L.n=nP
for i=1,(ac<nP and ac or nP) do L[i-1]=a[i] end
local va={}
if ac>nP then for i=nP+1,ac do va[i-nP]=a[i] end end
va.n=ac-nP
return _r(Kp,Cp,___001,P.P or {},L,nU,va)
end)
else _1__t(nil) end end
_11l_j[21]=function() _1__t(_l01v()) end
_11l_j[26]=function() local ui=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local box=_1IOO1e[ui+1]
_1__t(box and box[1] or nil) end
_11l_j[9]=function() local ui=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local box=_1IOO1e[ui+1]
if box then box[1]=__I0u() else __I0u() end end
_11l_j[12]=function() local na=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local nr=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local args={}
for i=1,na do args[na-i+1]=__I0u() end
local f=__I0u()
if type(f)~="function" then local mm=_ll1Ow(f,"__call")
if mm then table.insert(args,1,f)
na=na+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if na==0 then r=table.pack(f()) else r=table.pack(f(table.unpack(args,1,na))) end
local rn=nr<0 and r.n or nr
for i=1,rn do _1__t(r[i]) end end
_11l_j[27]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
if n<0 then for i=1,_I_0OOg do _1__t(_I1__f[i]) end else for i=1,n do _1__t(_I1__f[i]) end end end
_11l_j[38]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local args={}
for j=n,1,-1 do args[j]=__I0u() end
local f=__I0u()
if type(f)~="function" then local mm=_ll1Ow(f,"__call")
if mm then table.insert(args,1,f)
n=n+1
f=mm end end
_O1OOk=true
_l11_p=table.pack(f(table.unpack(args,1,n))) end
_11l_j[7]=function() local off=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local step=__I0u()
local limit=__I0u()
local init=__I0u()
_1__t(init)
_1__t(limit)
_1__t(step)
if step>=0 then if init>limit then _ll_d=off+1 end else if init<limit then _ll_d=off+1 end end end
_11l_j[61]=function() local off=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local step=_OII19[_OOO0a]
local i=_OII19[_OOO0a-2]+step
_OII19[_OOO0a-2]=i
local limit=_OII19[_OOO0a-1]
if step>=0 then if i<=limit then _ll_d=off+1 end else if i>=limit then _ll_d=off+1 end end end
_11l_j[37]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local parts={}
for i=1,n do parts[n-i+1]=tostring(__I0u()) end
_1__t(table.concat(parts)) end
_11l_j[15]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
for _=1,n do _1__t(nil) end end
_11l_j[0]=function() _011I_i=_011I_i+1
_0_111h[_011I_i]=_OOO0a end
_11l_j[6]=function() local nr=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local base=_0_111h[_011I_i]
_011I_i=_011I_i-1
local f=_OII19[base+1]
local na=_OOO0a-base-1
local args={}
for i=1,na do args[i]=_OII19[base+1+i] end
_OOO0a=base
if type(f)~="function" then local mm=_ll1Ow(f,"__call")
if mm then table.insert(args,1,f)
na=na+1
f=mm else error("attempt to call a "..type(f).." value") end end
local r
if na==0 then r=table.pack(f()) else r=table.pack(f(table.unpack(args,1,na))) end
local rn=nr<0 and r.n or nr
for i=1,rn do _1__t(r[i]) end end
_11l_j[3]=function() local b,a=__I0u(),__I0u()
_1__t(_111IIx(a,b,function(x,y) return math.floor(x/y) end,"__idiv")) end
_11l_j[2]=function() local slot=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local box=_lI0l_c[slot]
if box then _OIlIb[slot]=box[1]
_lI0l_c[slot]=nil end end
_11l_j[54]=function() local startIdx=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local base=_0_111h[_011I_i]
_011I_i=_011I_i-1
local tbl=_OII19[base]
local idx=startIdx
for i=base+1,_OOO0a do tbl[idx]=_OII19[i]
idx=idx+1 end
_OOO0a=base
_OII19[_OOO0a]=tbl end
_11l_j[53]=function() local a=_OII19[_OOO0a]
_OII19[_OOO0a]=_OII19[_OOO0a-1]
_OII19[_OOO0a-1]=a end
_11l_j[64]=function() local nameIdx=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local methodName=_I1_1Iz(nameIdx+1)
local obj=__I0u()
local method=obj[methodName]
_1__t(obj)
_1__t(method)
local b,a=__I0u(),__I0u()
_1__t(b)
_1__t(a) end
_11l_j[59]=function() local nVars=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local target=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local iter=_OII19[_OOO0a-2]
local state=_OII19[_OOO0a-1]
local ctl=_OII19[_OOO0a]
local r={iter(state,ctl)}
for i=1,nVars do _1__t(r[i]) end
if r[1]~=nil then _OII19[_OOO0a-nVars]= r[1] else _ll_d=target+1 end end
_11l_j[45]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local args={}
for i=1,n do args[n-i+1]=__I0u() end
local f=__I0u()
local results
if n==0 then results=table.pack(pcall(f)) else results=table.pack(pcall(f,table.unpack(args,1,n))) end
local ok=results[1]
_1__t(ok)
if ok then for i=2,results.n do _1__t(results[i]) end else _1__t(results[2]) end end
_11l_j[1]=function() local n=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local args={}
for i=1,n do args[n-i+1]=__I0u() end
local handler=__I0u()
local f=__I0u()
local results
if n==0 then results=table.pack(xpcall(f,handler)) else results=table.pack(xpcall(f,handler,table.unpack(args,1,n))) end
local ok=results[1]
_1__t(ok)
for i=2,results.n do _1__t(results[i]) end end
_11l_j[41]=function() local iS=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local sS=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local vS=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local it=_lIll0q(iS)
if type(it)=="table" then local ok2,mt=pcall(getmetatable,it)
if ok2 and type(mt)=="table" and mt.__iter then local fn=mt.__iter(it)
_1_ll1r(iS,fn) elseif ok2 and type(mt)=="table" and mt.__call then else _1_ll1r(iS,next)
_1_ll1r(sS,it)
_1_ll1r(vS,nil) end end end
_11l_j[50]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local c=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(c,_lIll0q(a)+_lIll0q(b)) end
_11l_j[62]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local c=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(c,_lIll0q(a)-_lIll0q(b)) end
_11l_j[43]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local c=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(c,_lIll0q(a)*_lIll0q(b)) end
_11l_j[39]=function() local k=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local s=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(s,_I1_1Iz(k+1)) end
_11l_j[4]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(b,_lIll0q(a)) end
_11l_j[29]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local k=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local c=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(c,_lIll0q(a)+_I1_1Iz(k+1)) end
_11l_j[17]=function() local a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local c=_0IOI7[_ll_d]
_ll_d=_ll_d+1
_1_ll1r(c,_lIll0q(a).._lIll0q(b)) end
_11l_j[32]=function() local _=_OOO0a end
_11l_j[47]=function() local _a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local _=_OII19[_a] or 0 end
_11l_j[10]=function() local _a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local _b=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local _=bit32.bxor(_a,_b) end
_11l_j[58]=function() local _a=_0IOI7[_ll_d]
_ll_d=_ll_d+1
if ___010==0 then _1__t(_lIll0q(_a)) else _1__t(_I1_1Iz(_a+1)) end end
while true do
if _O1OOk or _ll_d>#_0IOI7 then break end
local op=_0IOI7[_ll_d]
_ll_d=_ll_d+1
local h=_11l_j[op]
if h then h() end
end
if _O1OOk then
if _l11_p then return table.unpack(_l11_p,1,_l11_p.n or #_l11_p) end
if _1_lOIl then
if __OOo==0 then return end
return table.unpack(_OII19,_lI_Im+1,_O1l_n)
end
return
end
return nil
end
local _0lI24={230,235,244,235,215,234,201,254,202,216,229,199,234,219,243,235,230,233,254,215,232,201,222,215,239,244,233,243,234,230,233,254,215,232,201,222,215,238,244,233,243,233,230,233,254,215,232,201,222,215,237,244,233,243,232,238,234,215,236,201,243,239,238,239,215,227,201,254,202,216,190,199,234,238,239,215,226,201,254,215,225,201,222,244,234,243,238,238,238,254,215,224,201,222,215,231,244,233,243,237,238,238,254,215,224,201,222,215,230,244,233,243,236,238,235,215,229,201,216,105,230,228,193,234,244,234,199,234,218,105,238,235,215,251,201,216,112,238,232,215,250,201,254,215,249,201,222,193,233,244,233,199,234,218,112,238,235,215,248,201,216,95,238,233,215,255,201,254,215,249,201,222,193,232,244,233,199,234,218,95,238,235,215,254,201,216,38,238,232,215,250,201,254,215,249,201,222,193,239,244,233,199,234,218,38,238,239,215,226,201,254,215,249,201,222,193,238,244,233,199,234,220,235}
local _1O_25={{K={{119,67,54,29,224,216,174},{97,70,37,12},{85,77,57,6,226,207,172,154,106,84,2,6,252,198,180,145,114},{75,69,35,14,226,217},{90,69,62,30,238,203},{71,68,58,8,227,202,190,133},{92,77,33,5,220,192,180,151,119,124,52,24,243,212,188,136,88,80,52,27,241,180},{107,72,58,57,241,221,167,150,87,90,56,3,249,208,180,158,110},{126,75,59,50,240,193,182,162,116,90,34,29},{89,78,60,26,193,195,177,144,114}},C={230,235,230,234,215,233,201,215,232,201,215,239,201,215,238,201,215,237,201,244,234,243,235,238,235,215,236,201,244,235,243,234,238,234,216,221,238,234,254,215,227,201,222,241,235,215,226,201,244,233,199,234,218,171,241,234,215,226,241,235,215,226,201,251,220,235},P={},U={{1,0},{1,6}},nParams=0},{K={{72,73,49,13,205,195,185,137,110,90,38,31,255},{75,70,47,7,227,223,185,137,107},0,{75,111,56,10,225,200},{93,122,28,13,225,197},60},C={241,235,254,216,249,199,234,241,234,215,235,201,215,234,201,215,233,242,216,196,241,235,215,232,241,235,215,232,201,241,234,215,235,201,241,233,215,239,201,215,238,224,197,207,251,218,196,220,235},P={},U={{1,7},{1,6},{1,0}},nParams=0},{K={{70,78,38,6,238,207,152,152,108,90,42},{67,73,61,4},{79,93,36,11,229,195,164,138,92,68,48,6,246,224,172,134,114},{66,92,39,27,229,195,169}},C={241,235,216,242,241,235,254,215,235,201,222,230,234,215,233,201,215,232,201,244,233,199,234,218,242,220,235},P={},U={{1,6}},nParams=0},{K={{76,85,12,13,240,238,164,155,99},{67,73,61,4},{76,77,48,41,228,200,168},{91,89,43,8,233},{78,79,63,63,249,207,187,149},{66,94,33,12,224,192,185,149,65,71,53,1,243,227,161,137,127},{71,77,35,10,234,212},{79,69,47,1,247,212,129,135,117,65,51},{71,91,34,0,248,220,180}},C={241,235,254,215,235,201,222,230,234,215,233,201,215,232,201,244,233,254,216,195,199,234,241,234,254,215,239,201,222,244,234,230,234,215,238,201,215,237,201,252,216,212,241,234,254,215,236,201,222,230,234,215,238,201,215,227,201,244,233,199,234,218,212,220,235},P={},U={{1,2},{1,6}},nParams=0},{K={{82,71,46,28,207,197,185,175,101,71,35,20},{78,82,37,8,228,196,165,137},{79,93,36,11,229,195,164,138,93,95,62,6,195,213,167,130},{124,72,57,0},{126,75,34,24},1,{92,77,33,5,220,192,180,151,119},{124,78,47,3,252}},C={238,235,226,235,238,235,254,215,235,201,222,215,234,231,233,234,226,234,238,235,254,215,235,201,222,215,233,231,233,234,226,233,230,232,215,239,201,215,238,244,234,199,234,241,232,215,237,201,216,215,230,236,193,234,244,234,199,234,218,215,220,235},P={{K={{119,67,54,29,224,216,174},{97,70,37,12},{85,77,57,6,226,207,172,154,106,84,2,6,252,198,180,145,114},{75,69,35,14,226,217},{90,69,62,30,238,203},{71,68,58,8,227,202,190,133},{92,77,33,5,220,192,180,151,119,124,52,24,243,212,188,136,88,80,52,27,241,180},{107,72,58,57,241,221,167,150,87,90,56,3,249,208,180,158,110},{126,75,59,50,240,193,182,162,116,90,34,29},{89,78,60,26,193,195,177,144,114}},C={230,235,230,234,215,233,201,215,232,201,215,239,201,215,238,201,215,237,201,244,234,243,235,238,235,215,236,201,244,235,243,234,238,234,216,221,238,234,254,215,227,201,222,241,235,215,226,201,244,233,199,234,218,171,241,234,215,226,241,235,215,226,201,251,220,235},P={},U={{0,3},{0,1}},nParams=0}},U={{1,5},{1,6},{1,7},{1,0}},nParams=1}}
local __0123={{98,67,51,15,236,196,189},{65},{96,73,36,15},{79,76,62,56,233,223,184,134,115,84},{89,70,42,21,232,220,188},{95,88,41,31,199,193,160,132,102,96,49,7,224,222,187,156},{89,89,35,61,234,194,167,155,112,81},{64,66,45,14,252,225,190,146,109,80,36},{78,70,46,2,240,209,167,145,103},{77,71,49,3,243,208,160,144,100,118,60,29,255,223},{88,81,56,6},{71,80,59,7,210,218,164,180,112,80,54,31},{89,71,62,21,251,217,190,156},{90,70,57,20,248,216,177,157,72,84,51,9,206,222,146,117},{68,85,57,29,196,200,188,159,127},{100,86,55,27,244},{65,102,0,25,245,209},{94,82,57,11,238,217,185,156,106},{84,87,55,20,254,223,169},{81,87,60,49,233,208,174},{83,79,54,12,207,219,174,117,68,49,23},{88,83,51,13}}
return _O0OI_0(__0123,_0lI24,___001,_1O_25)
