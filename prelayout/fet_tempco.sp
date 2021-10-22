**** mosfet tempco characterization *****

.lib "/home/santunu/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice tt"
.include "/home/santunu/cad/eda-technology/sky130/models/spice/models/sky130_fd_pr__model__pnp.model.spice"

.global vdd gnd
.temp 27

*** mosfet definition
xmp2    net2    net2    vdd     vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=4
xmn1    net1    net1    gnd     gnd     sky130_fd_pr__nfet_01v8_lvt     l=1     w=5     m=8
xmn2    net2    net1    qp2     gnd     sky130_fd_pr__nfet_01v8_lvt     l=1     w=5     m=8

*** supply current
vsup	vdd	gnd	dc	2
vid     qp2     gnd     dc      0
isup	gnd	net1	dc 	10u
.dc	temp	-40	125	1

*** control statement
.control
run
plot vid#branch 
.endc
.end

