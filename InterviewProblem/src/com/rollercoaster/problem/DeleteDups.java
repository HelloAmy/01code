package com.rollercoaster.problem;

import java.util.Hashtable;

import com.rollercoaster.datastructure.LinkedListNode;

public class DeleteDups {

	public static void deleteDups(LinkedListNode node) {
		Hashtable<String, Boolean> table = new Hashtable<String, Boolean>();
		LinkedListNode previous = new LinkedListNode();
		while (node != null) {
			if (table.containsKey(node.data)) {
				previous = node.next;
			} else {
				table.put(node.data, true);
				previous = node;
			}

			node = node.next;
		}
	}
}
