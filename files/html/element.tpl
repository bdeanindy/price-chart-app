{{! template for the pricing table.}}
<div class="pricing-table-wrapper">
	<table class="pricing-table {{theme}} buttonLocation-{{location}}">
		<tr class="name">
			{{#columns_each}}
				<td class="cell">{name_{{columns_index}}:text default="Name #{{columns_index}}"}</td>
			{{/columns_each}}
		</tr>

		<tr class="price">
			{{#columns_each}}
				<td class="cell">{price_{{columns_index}}:text default="10"}</td>
			{{/columns_each}}
		</tr>

		<tr class="rate">
			{{#columns_each}}
				<td class="cell">{rate_{{columns_index}}:text default="per unit"}</td>
			{{/columns_each}}
		</tr>

		<tr class="buttons-middle">
			{{#columns_each}}
				<td class="cell">{buttonText_middle_{{columns_index}}:button}</td>
			{{/columns_each}}
		</tr>

	{{#rows_each}}
		<tr class="metric">
			{{#columns_each}}
				<td class="cell">{metric_{{columns_index}}_{{rows_index}}:text default="Metric #{{rows_index}}"}</td>
			{{/columns_each}}
		</tr>
	{{/rows_each}}

		<tr class="buttons-bottom">
			{{#columns_each}}
				<td class="cell">{buttonText_bottom_{{columns_index}}:button}</td>
			{{/columns_each}}
		</tr>
	</table>
</div>