<script runat=server language=javascript>
function showlist(dict, dictname){

	Response.Write("<table border=5 align=center>\n");
	Response.Write("<tr><th colspan=2 bgcolor=#E69500>" + dictname + "\n");
	Response.Write("<tr><th bgcolor=#6E6EFF >Question <th bgcolor=#6E6EFF>Answer\n");
    
  
    
	var show=new Enumerator(dict);
	for (show.moveFirst(); !show.atEnd(); show.moveNext()){
		Response.Write("<tr><td>");
		Response.Write(""+"-"+show.item()+"\n");
		Response.Write("<td>");
		Response.Write(dict(show.item()));
       
	}
    
	Response.write("</table>\n");
   
      
}


</script>

