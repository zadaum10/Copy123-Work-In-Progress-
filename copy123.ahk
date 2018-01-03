;Allows you to copy multiple strings at once using ctrl+c/v+1/2/3/4/etc.

;Main Script
;--------------------------
Loop
{
	clipboard =
	^c & 1::
	{
		ClipSaved1 := ClipboardAll
	}
	^v & 1::
	{
		send %ClipSaved1%
		ClipWait, 1
		clipboard = 
	}
}