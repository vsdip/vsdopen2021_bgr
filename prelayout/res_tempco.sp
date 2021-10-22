**** ctat voltage generation circuit *****

.lib "/home/srath22/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice tt"
.include "/home/srath22/cad/eda-technology/sky130/models/spice/models/sky130_fd_pr__model__pnp.model.spice"

.global vdd gnd
.temp 27

*** resistor definition
xra1    ra1     na1     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra2    na1     na2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra3    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra4    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8

*** supply current
vsup	vdd	gnd	dc	2
vid     qp2     gnd     dc      0
isup	gnd	ra1	dc 	10u
.dc	temp	-40	125	1	

*** control statement
.control
run
plot v(ra1) 
plot v(ra1)/vid#branch
.endc
.end

