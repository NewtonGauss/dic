package com.test.bo;

import java.util.List;
import java.util.*;

public class Test {
	public String str;
	public Long ll = 1L;
	protected long lll;
	protected int i = 1;
	private List<Double> ds;

	@Expose
	private List<Integer> is;

	@Expose private Double d = 1f;
	
	public Test() { }

	public String Str() {
		return this.str;
	}
}

