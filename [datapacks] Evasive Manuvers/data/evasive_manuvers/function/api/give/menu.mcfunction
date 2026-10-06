
function buttons:gui/open {dim:[6,6],color:[0,0,0],size:0.15f,dist:2,text_box:{text:{text:"Give Menu",color:"white"},size:1,dx:0},Tags:["evasiveManuvers.giveMenu"]}



execute summon item_display run function evasive_manuvers:system/give/menu/items

function buttons:gui/update with storage math:data macro



