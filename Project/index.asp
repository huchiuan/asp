<%@language=Javascript%>
    <%title="���ں����{���]�p����Project"%>
        <!--#include file="head.inc"-->
        <hr>
        <%
if (Application("Count")==null)	
	Application("Count")=-1;

function Hit(){		
	Application("Count")++;	
	return(Application("Count"));
}
%>
           

            <h1 align=center>Bmi�˴���</h1>
            <form action="index.asp?type=newspace2" method="get" name="form" id="form">
                <h3 align=center>�п�J�A������ �Ҧp:175(CM): <input type='text' name='cm' id='cm' value=""> </h3>
                <h3 align=center> �п�J�A���魫 �Ҧp:65(KG): <input type='text' name='kg' id='kg' value=""> </h3>
                <h3 align=center> �п�J�A���W�r �Ҧp:�J����: <input type='text' name='person' id='person' value=""> </h3>
                <h3 align=center> <input type="submit" value="Request�e�X��ư����"></h3>



            </form>
            <form action="delect.asp" method="get" name="form" id="form">
                <h3 align=center> <input type="submit" value="�ǰe��Application Removeall�\��!"></h3>
            </form>


            <form action="except.asp" method="post" name="form" id="form">
                <h3 align=center> <input type="submit" value="�ǰe�ܪ���ƨt��!"></h3>
            </form>
 <hr>



            <%
function Bmi(dict) {  //////////////////////////////////1
    
	var show=new Enumerator(dict);
    var space =new Array();
    var count =1;
    
     var answer=0;
     
     
    var newcount=0;
    for (show.moveFirst(); !show.atEnd(); show.moveNext()){/////////////////////////2
    
    var number =dict(show.item())+" ";
    if(count!=3){  //���
    number = Number(number);
    } //���
    space.push(number);
    
    if(count==3){
    
    var servername =space[2]+"";

     answer=(space[1]/((space[0]/100)*(space[0]/100)));
  
     Response.Write("<h2 align=center>");
   
     Response.Write("�A�O:�u"+space[2]+"  �v�A�A��BMI�ȬO�u"+answer.toPrecision(3)+"�v");
     
     Response.Write("<p>");
     
     if(answer.toPrecision(3)>18.5&&answer.toPrecision(3)<=24){//���1
      Response.Write("���d�ѪR:");
      Response.Write("<p>");
     Response.Write("�O���d���@���魫!");
      Response.Write("<p>");
     
     
     
     
       peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "�w�]�H�W";	
	            
	            
	            
	          
	            
	            
	            
      url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) = 0;	// �Y Application(url) ���s�b�A�h�]�w�䬰 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {//���
                var old = Application(url);
                var oldpeople = Application("peoplename");
                 
                  Application("peoplename")=servername ;
                 Application(url)=answer.toPrecision(3)
                 Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                 Response.Write("���A���W���e�̰��d���H�O:�u"+oldpeople+"�v�A�L��BMI�O:�u"+old+"�v�A���A��L���d"); 
                 Response.Write("<p>");
                  Response.Write("�ҥH�A���ѥL�����o���A�����̰��d���H!"); 
                }//���
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {//���
              

                Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                Response.Write("���A���W�̰��d���H�O:�u"+Application("peoplename")+"�v�A�L��BMI�O:�u"+Application(url)+"�v�A���A��L�����d"); 
                   Response.Write("<p>");
                    Response.Write("�ҥH�L�{�b�٬O���A�����̰��d���H!");
                    Response.Write("<p>");
                 Response.Write("�ҥH�ЧA�h�B�ʡA�h�Y���G�A���Φ��_�A�̫�N��Ĺ���A���W�����d����><"); 
                 
                 
                }//���
                else if(Math.abs(answer.toPrecision(3)-21)==Math.abs(Application(url)-21))
                {//���
              
                var old = Application(url);
                var oldpeople = Application("peoplename");
                 
                  Application("peoplename")=servername ;
                 Application(url)=answer.toPrecision(3)
                 Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                 Response.Write("���A���W���e�̰��d���H�O:�u"+oldpeople+"�v�A�L��BMI�O:�u"+old+"�v�A�A��L�@�˰��d"); 
                 Response.Write("<p>");
                  Response.Write("���A��L�ߵn�J�A�ҥH�A���ѥL�����o���A�����̰��d���H!"); 
                }//���
                
                
           
     
     }//���  1
     
     
     
     else if(answer.toPrecision(3)>=25){//���2
 
                 Response.Write("���d�ѪR:");
                  Response.Write("<p>");
       Response.Write("�O�έD���魫!");
          Response.Write("<p>");
          Response.Write("<hr>");
          
          
       peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "�w�]��";	
	            
	            
	            
           url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) = 0;	// �Y Application(url) ���s�b�A�h�]�w�䬰 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {  //���
                var old = Application(url);
                var oldpeople = Application("peoplename");
                  Application("peoplename")=servername;
                 Application(url)=answer.toPrecision(3)
                  Response.Write("<p>");
                 Response.Write("�ƦW���R:");
               
                  Response.Write("<p>");
                 Response.Write("���A���W���e�̰��d���H�O:�u"+oldpeople+"�v�A�L��BMI�O:�u"+old+"�v�A���A��L���d"); 
                 Response.Write("<p>");
                  Response.Write("�ҥH�A���ѥL�����o���A�����̰��d���H!"); 
                }  //��� 
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {  //���
              
           Response.Write("<p>");
                Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                Response.Write("���A���W�̰��d���H�O:�u"+Application("peoplename")+"�v�A�L��BMI�O:�u"+Application(url)+"�v�A���A��L�����d"); 
                   Response.Write("<p>");
                    Response.Write("�ҥH�L�{�b�٬O���A�����̰��d���H!");
                    Response.Write("<p>");
                 Response.Write("�ҥH�ЧA�h�B�ʡA�h�Y���G�A���Φ��_�A�̫�N��Ĺ���A���W�����d����><"); 
                 
                 
                }  //���
           

     }//���2
     
     
     else if (answer.toPrecision(3)<=18.5){//���3
              Response.Write("<p>");
    
                 Response.Write("���d�ѪR:");
                  Response.Write("<p>");
      Response.Write("�O�L�����魫!!");
       Response.Write("<p>");
       
        peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "�w�]��";	
	            
	            
       url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) =0;	// �Y Application(url) ���s�b�A�h�]�w�䬰 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {//���
                var old = Application(url);
                var oldpeople = Application("peoplename");
                  Application("peoplename")=servername;
                 Application(url)=answer.toPrecision(3)
                  Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                 Response.Write("���A���W���e�̰��d���H�O:�u"+oldpeople+"�v�A�L��BMI�O:�u"+old+"�v�A���A��L���d"); 
                 Response.Write("<p>");
                  Response.Write("�ҥH�A���ѥL�����o���A�����̰��d���H!"); 
                }//���
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {//���
               Response.Write("<p>");
            
                Response.Write("<p>");
                 Response.Write("�ƦW���R:");
                  Response.Write("<p>");
                Response.Write("���A���W�̰��d���H�O:�u"+Application("peoplename")+"�v�A�L��BMI�O:�u"+Application(url)+"�v�A���A��L�����d"); 
                   Response.Write("<p>");
                    Response.Write("�ҥH�L�{�b�٬O���A�����̰��d���H!");
                    Response.Write("<p>");
                 Response.Write("�ҥH�ЧA�h�B�ʡA�h�Y���G�A���Φ��_�A�̫�N��Ĺ���A���W�����d����><"); 
                 
                }//���
           
     }//���3
     }
     Response.Write("</h2>");
     
      if(space[0]!=0){//���
		count++;
        } /////���
    }/////////////////////////////2
    
	}///////////////////////////////////////////////////////1

%>


                <p>
                     
                    <% Bmi(Request.QueryString); %>
                         <p>
                           <hr>
                        <h3 align=center>�A�w�ϥΦ������u
                <font color=green>
                    <%=Hit()%>
                </font>�v ���I</h3>
                      
                        <html/>
