local leap_status, leap = pcall(require, "leap")

if not leap_status then
	return print("leap not found !!")
end

leap.add_default_mappings()
