defmodule ProcessRing do
	def process_ring message do
		Enum.map [a: "", b: "", c: "", d: "", e: ""], fn({x, y}) -> {x, spawn_monitor(fn -> create_process(x) end)} end 
		#Enum.each ring_pids, fn({a, b}) -> IO.puts is_pid(elem(b,0)) end
	end

	defp create_process number do
		IO.puts "creando proceso #{number}"
	end
end
