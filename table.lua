#!/usr/local/bin/lua



    arr = {
            ["魏"]={
                "张辽",
                "李典",
                "曹洪"
            },
        
            ["蜀"]={
                "关羽",
                "张飞",
                "赵云"
            },
            
            ["吴"]={
                "周瑜",
                "鲁肃",
                "黄盖"
            }
        }




dataArr = {}

for k in pairs(arr) do

	local tempArr = {}

	table.insert(tempArr, {["FOLD_STATE"]=1})
	table.insert(tempArr, arr[k])

	table.insert(dataArr,tempArr)
end



print("-------------------------------")



for k in pairs(dataArr) do

	print(k)
	print(dataArr[k])

	for key, val in pairs(dataArr[k]) do

		if (key == 1) 
		then
			print("FOLD_STATE is :"..val["FOLD_STATE"])

		elseif (key == 2) 
		then
			for lastkey in pairs(val) do
				print("the inner is : "..val[lastkey])
			end
		end
	end
	print('\n')
end



