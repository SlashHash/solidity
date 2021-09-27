contract C {

	struct S {
		uint x;
	}

	S s = S(42);

	function test() view public {
		assert(s.x == 42);
	}
}
// ====
// SMTEngine: all
// ----
// Info 1180: (0-111): Contract invariants and external call properties for :C:\n(!(s.x <= 41) && !(s.x >= 43))\n
