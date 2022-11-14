set_max_delay -from [get_ports A[*]] -to [get_ports S[*]] 3
set_max_delay -from [get_ports B[*]] -to [get_ports S[*]] 3
set_max_delay -from [get_ports A[*]] -to [get_ports C[*]] 3
set_max_delay -from [get_ports B[*]] -to [get_ports C[*]] 3

set_operating_conditions -model fast -temperature 85 -voltage 1100