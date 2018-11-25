vlib work

vlog -timescale 1ns/1ns tetris.v

vsim datapath

log {/*}

add wave {/*}

force {clock} 0 0, 1 2 -r 4

# demonstrating stacking of blocks until gg

# in full implementation, controller will call translate_down at a slowed interval compared to the clock
# and it will call init_block immediately after just_fallen
force {reset} 1
run 10 ns

force {reset} 0
force {init_block} 1
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 10 ns

# some left and right translations (though left should do nothing because x coordinate is 1)
force {translate_down} 0
force {translate_left} 1
run 10 ns

force {translate_left} 0
force {translate_right} 1
run 10 ns

force {translate_right} 0
force {translate_down} 1
run 90 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns

force {init_block} 1
force {translate_down} 0
run 10 ns

force {init_block} 0
force {translate_down} 1
run 100 ns
