steps:-
mkdir name
cd name
vi inv.v 
vi inv_tb.v
vi cds.lib
      define inv_lib ./inv.lib    => ESC:wq!(for exit)
mkdir inv.lib
vi hdl.var
       define WORK inv_lib       =>ESC:wq!(for exit)
ncvlog inv.v -mess
ncvlog inv_tb.v -mess
ncelab inv_tb -access +rwc -mess
ncsim inv_tb -gui


for serial adder only:-

mkdir name
cd name
vi serialadder.v
vi full_adder_1bit.v
vi serialadder_tb.v
vi cds.lib
      define serialadder_lib ./serialadder.lib
mkdir serialadder.lib
vi hdl.var
       define WORK serialadder_lib
ncvlog serialadder.v -mess
ncvlog full_adder_1bit.v -mess
ncvlog serialadder_tb.v -mess
ncelab serialadder_tb -access +rwc -mess
ncsim serialadder_tb -gui



//for typing= press i
//for exit= ESC :wq!