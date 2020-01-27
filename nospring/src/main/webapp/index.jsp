<html>
<body>
<h2>Hello World!  ss</h2>
<table border="1">
	<tr> <th>Header</th><th>Value</th>
	</tr>
	<tr>
		<td>user-agent</td>
		 <td><%= request.getAttribute("client.browser")%></td>
	</tr>
</table>

</body>
</html>
