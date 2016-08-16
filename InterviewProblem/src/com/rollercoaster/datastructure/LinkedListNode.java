package com.rollercoaster.datastructure;

/**
 * 数据结构——单链表
 * @author Administrator
 *
 */
public class LinkedListNode {
	private String data;
	
	private LinkedListNode next;

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public LinkedListNode getNext() {
		return next;
	}

	public void setNext(LinkedListNode next) {
		this.next = next;
	}
}
