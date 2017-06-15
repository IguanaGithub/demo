-- The main function is the first function called from Iguana.
require 'net.http.cache'

local function htmlCleanUp (orgStr)
   local tst = orgStr:split("<body")
   local upStr = "<html><body"..tst[2]
	return upStr:gsub("&", "AND")
end

function main()
   -- Parse 天助盈通公司
   local baidu = net.http.get{url='http://www.angelwin.com/', cache_time=30, live=true}
   local cleanupBaiddu = htmlCleanUp(baidu)
   trace(cleanupBaiddu)
   
   
end