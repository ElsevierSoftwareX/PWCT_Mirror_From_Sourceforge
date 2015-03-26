FUNCTION sys_tree_expand(oTree,oNode,lStatus)

LOCAL x,nMax,myitem
nMax = oNode.children
IF nMax > 0
	FOR x = 1 TO nMax
	
			IF x = 1
				myitem = oNode.child
			ELSE
				myitem = myitem.next
			ENDIF 			
	
			myitem.expanded = lStatus
			IF myitem.children > 0
					sys_tree_expand(oTree,myitem,lStatus)
			ENDIF 

	NEXT

ENDIF 