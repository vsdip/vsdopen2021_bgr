**** ctat voltage generation circuit *****

.lib "/home/srath22/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice" tt
.include "/home/srath22/cad/eda-technology/sky130/models/spice/models/sky130_fd_pr__model__pnp.model.spice"

.global vdd gnd
.temp 27

*** bjt definition
xqp1	gnd	gnd	qp1	gnd	sky130_fd_pr__pnp_05v5_W3p40L3p40	m=1

*** supply voltage and current
vsup	vdd	gnd	dc	2
isup	vdd	qp1	dc 	10u
.dc	temp	-40	125	5

*** control statement
.control
run
plot v(qp1)
.endc
.end

