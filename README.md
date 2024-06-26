﻿# VerilogBalanceAndComparatorModules
## Project Description
This repository contains a collection of Verilog modules designed to simulate different systems, including balance systems and a 3-bit comparator. Each module is well-documented and demonstrates a specific functionality or algorithm.

## Files
- `cubuk_dengesi.v`: Verilog module for simulating a rod balance system.
- `sistem_dengesi.v`: Verilog module for simulating a general system balance.
- `ucbit_karsilastirici.v`: Verilog module for a 3-bit comparator.

## Module Descriptions

### Module Usage
```verilog
// cubuk_dengesi.v
module cubuk_dengesi(input clk, input reset, input [7:0] weight, output balance);
// Module implementation
endmodule

// sistem_dengesi.v
module sistem_dengesi(input clk, input reset, input [7:0] force, output equilibrium);
// Module implementation
endmodule

// ucbit_karsilastirici.v
module ucbit_karsilastirici(input [2:0] a, input [2:0] b, output lt, output gt, output eq);
// Module implementation
endmodule
