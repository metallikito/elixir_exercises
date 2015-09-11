defmodule Bookstore do
	def calculate_total orders do
		Enum.map(orders, fn(order) -> [] ++ add_total order end)
	end

	defp add_total order do
		net_amount = order[:net_amount]
		case order[:ship_to] do
			:NC ->
				order ++ [total_amount:  net_amount |> multiply_tax(1.075)]

			:TX ->
				order ++ [total_amount: net_amount |> multiply_tax(1.08)]
			_ ->
				order ++ [total_amount: net_amount]
		end
	end

	defp multiply_tax(net_ammount, tax), do: net_ammount * tax
end
