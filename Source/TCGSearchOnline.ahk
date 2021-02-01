smallLoop = 0
continue = 0
SearchArr:=[]
SearchArr:=Array()

inputbox,patternSelect,Which TCG?, Please Pick a TCG to search: `n1. Hololive `n2. Mixed


while (continue = 0)
	{
	inputbox,Search,Search,What card #?
		if(Search =0)
		{

		continue++

		}

		else
		{
		if(patternSelect = 1)
		{
		CardNum = HP/001B-%Search%
		}
		else if(patternSelect = 2)
		{
		CardNum = %Search%
		}
		else
		{
		CardNum = %Search%
		}
		SearchArr.InsertAt(smallLoop,CardNum)
		smallLoop++

		}

}

bigLoop = 0
Loop, %smallLoop%
	{
	Open := SearchArr[bigLoop]
	run chrome.exe tcgrepublic.com/product/text_search.html?q=%Open%
	BigLoop++
	}