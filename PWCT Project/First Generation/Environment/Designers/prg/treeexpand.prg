FUNCTION sys_tree_expand(oTree,oNode,lStatus)

LOCAL x,nMax,myitem
nMax = oNode.children
FOR x = 1 TO nMax
		myitem = oTree.nodes.item(oNode.index + x)
		myitem.expanded = lStatus
		IF myitem.children > 0
				sys_tree_expand(oTree,myitem,lStatus)
		ENDIF 
next