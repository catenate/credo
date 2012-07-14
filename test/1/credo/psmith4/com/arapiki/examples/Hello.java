package com.arapiki.examples;

public class Hello {

	private String words;

	public Hello(String message) {
		words = message;
	}

	public void speak() {
		System.out.println("Hello " + words);
	}
}
