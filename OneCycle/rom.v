`timescale 1ns/1ps

module ROM (addr,data);
input [31:0] addr;
output [31:0] data;
reg [31:0] data;
localparam ROM_SIZE = 32;
reg [31:0] ROM_DATA[ROM_SIZE-1:0];

always@(*)
	case(addr[9:2])	//Address Must Be Word Aligned.
/*
		0: data <=  32'h3c114000;
		1: data <=  32'h26310004;
		2: data <=  32'h241000aa;
		3: data <=  32'hae200000;
		4: data <=  32'h08100000;
		5: data <=  32'h0c000000;
		6: data <=  32'h00000000;
		7: data <=  32'h3402000a;
		8: data <=  32'h0000000c;
		9: data <=  32'h0000_0000;
		10: data <= 32'h0274_8825;
		11: data <= 32'h0800_0015;
		12: data <= 32'h0274_8820;
		13: data <= 32'h0800_0015;
		14: data <= 32'h0274_882A;
		15: data <= 32'h1011_0002;
		16: data <= 32'h0293_8822;
		17: data <= 32'h0800_0015;
		18: data <= 32'h0274_8822;
		19: data <= 32'h0800_0015; 
		20: data <= 32'h0274_8824;
		21: data <= 32'hae11_0003;
		22: data <= 32'h0800_0001;
*/

0: data <=32'h08000003;
1: data <=32'h0800003c;
2: data <=32'h0800003b;
3: data <=32'h00008020;
4: data <=32'h3c104000;
5: data <=32'h22100018;
6: data <=32'h00008820;
7: data <=32'h3c110000;
8: data <=32'h22310002;
9: data <=32'h00002020;
10: data <=32'h00002820;
11: data <=32'h2210fff0;
12: data <=32'hae000000;
13: data <=32'h2210fff8;
14: data <=32'h2008fc18;
15: data <=32'hae080000;
16: data <=32'h2008ffff;
17: data <=32'h22100004;
18: data <=32'hae080000;
19: data <=32'h20080003;
20: data <=32'h22100004;
21: data <=32'hae080000;
22: data <=32'h22100018;
23: data <=32'h00001020;
24: data <=32'h8e080000;
25: data <=32'h01114824;
26: data <=32'h1120fffd;
27: data <=32'h2210fffc;
28: data <=32'h8e040000;
29: data <=32'h20860000;
30: data <=32'h22100004;
31: data <=32'h8e080000;
32: data <=32'h01114824;
33: data <=32'h1120fffd;
34: data <=32'h2210fffc;
35: data <=32'h8e050000;
36: data <=32'h20a70000;
37: data <=32'h22100004;
38: data <=32'h0800002d;
39: data <=32'h00805020;
40: data <=32'h01456022;
41: data <=32'h19800001;
42: data <=32'h01455022;
43: data <=32'h00a02020;
44: data <=32'h01402820;
45: data <=32'h1485fff9;
46: data <=32'h00801020;
47: data <=32'h3c104000;
48: data <=32'h2210000c;
49: data <=32'hae020000;
50: data <=32'h3c104000;
51: data <=32'h22100018;
52: data <=32'hae020000;
53: data <=32'h00001820;
54: data <=32'h00001820;
55: data <=32'h00001820;
56: data <=32'h00001820;
57: data <=32'h00001820;
58: data <=32'h08000035;
59: data <=32'h03600008;
60: data <=32'h200dfff9;
61: data <=32'h0000b820;
62: data <=32'h3c174000;
63: data <=32'h22f70008;
64: data <=32'h8eee0000;
65: data <=32'h01ae6824;
66: data <=32'haeed0000;
67: data <=32'h22f7000c;
68: data <=32'h8eed0000;
69: data <=32'h31b60f00;
70: data <=32'h200e0100;
71: data <=32'h12c00007;
72: data <=32'h11d6000e;
73: data <=32'h000e7040;
74: data <=32'h11d60013;
75: data <=32'h000e7040;
76: data <=32'h11d60019;
77: data <=32'h000e7040;
78: data <=32'h11d60000;
79: data <=32'h00007820;
80: data <=32'h30ef00f0;
81: data <=32'h000f7902;
82: data <=32'h0c00006d;
83: data <=32'h20180100;
84: data <=32'h01f87825;
85: data <=32'haeef0000;
86: data <=32'h080000ac;
87: data <=32'h00007820;
88: data <=32'h30ef000f;
89: data <=32'h0c00006d;
90: data <=32'h20180200;
91: data <=32'h01f87825;
92: data <=32'haeef0000;
93: data <=32'h080000ac;
94: data <=32'h00007820;
95: data <=32'h30cf00f0;
96: data <=32'h000f7902;
97: data <=32'h0c00006d;
98: data <=32'h20180400;
99: data <=32'h01f87825;
100: data <=32'haeef0000;
101: data <=32'h080000ac;
102: data <=32'h00007820;
103: data <=32'h30cf000f;
104: data <=32'h0c00006d;
105: data <=32'h20180800;
106: data <=32'h01f87825;
107: data <=32'haeef0000;
108: data <=32'h080000ac;
109: data <=32'h200d0000;
110: data <=32'h15ed0002;
111: data <=32'h200f0040;
112: data <=32'h03e00008;
113: data <=32'h21ad0001;
114: data <=32'h15ed0002;
115: data <=32'h200f0079;
116: data <=32'h03e00008;
117: data <=32'h21ad0001;
118: data <=32'h15ed0002;
119: data <=32'h200f0024;
120: data <=32'h03e00008;
121: data <=32'h21ad0001;
122: data <=32'h15ed0002;
123: data <=32'h200f0030;
124: data <=32'h03e00008;
125: data <=32'h21ad0001;
126: data <=32'h15ed0002;
127: data <=32'h200f0019;
128: data <=32'h03e00008;
129: data <=32'h21ad0001;
130: data <=32'h15ed0002;
131: data <=32'h200f0012;
132: data <=32'h03e00008;
133: data <=32'h21ad0001;
134: data <=32'h15ed0002;
135: data <=32'h200f0002;
136: data <=32'h03e00008;
137: data <=32'h21ad0001;
138: data <=32'h15ed0002;
139: data <=32'h200f0078;
140: data <=32'h03e00008;
141: data <=32'h21ad0001;
142: data <=32'h15ed0002;
143: data <=32'h200f0000;
144: data <=32'h03e00008;
145: data <=32'h21ad0001;
146: data <=32'h15ed0002;
147: data <=32'h200f0010;
148: data <=32'h03e00008;
149: data <=32'h21ad0001;
150: data <=32'h15ed0002;
151: data <=32'h200f0008;
152: data <=32'h03e00008;
153: data <=32'h21ad0001;
154: data <=32'h15ed0002;
155: data <=32'h200f0003;
156: data <=32'h03e00008;
157: data <=32'h21ad0001;
158: data <=32'h15ed0002;
159: data <=32'h200f0046;
160: data <=32'h03e00008;
161: data <=32'h21ad0001;
162: data <=32'h15ed0002;
163: data <=32'h200f0021;
164: data <=32'h03e00008;
165: data <=32'h21ad0001;
166: data <=32'h15ed0002;
167: data <=32'h200f0006;
168: data <=32'h03e00008;
169: data <=32'h21ad0001;
170: data <=32'h200f000e;
171: data <=32'h03e00008;
172: data <=32'h0000b820;
173: data <=32'h3c174000;
174: data <=32'h22f70008;
175: data <=32'h8eee0000;
176: data <=32'h3c0f0000;
177: data <=32'h21ef0002;
178: data <=32'h01ee7025;
179: data <=32'haeee0000;
180: data <=32'h03400008;

	   default:	data <= 32'h0800_0000;
	endcase
endmodule
