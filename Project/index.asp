<%@language=Javascript%>
    <%title="網際網路程式設計期末Project"%>
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
           

            <h1 align=center>Bmi檢測器</h1>
            <form action="index.asp?type=newspace2" method="get" name="form" id="form">
                <h3 align=center>請輸入你的身高 例如:175(CM): <input type='text' name='cm' id='cm' value=""> </h3>
                <h3 align=center> 請輸入你的體重 例如:65(KG): <input type='text' name='kg' id='kg' value=""> </h3>
                <h3 align=center> 請輸入你的名字 例如:胡祐銓: <input type='text' name='person' id='person' value=""> </h3>
                <h3 align=center> <input type="submit" value="Request送出資料做比較"></h3>



            </form>
            <form action="delect.asp" method="get" name="form" id="form">
                <h3 align=center> <input type="submit" value="傳送至Application Removeall功能!"></h3>
            </form>


            <form action="except.asp" method="post" name="form" id="form">
                <h3 align=center> <input type="submit" value="傳送至表單資料系統!"></h3>
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
    if(count!=3){  //找到
    number = Number(number);
    } //找到
    space.push(number);
    
    if(count==3){
    
    var servername =space[2]+"";

     answer=(space[1]/((space[0]/100)*(space[0]/100)));
  
     Response.Write("<h2 align=center>");
   
     Response.Write("你是:「"+space[2]+"  」，你的BMI值是「"+answer.toPrecision(3)+"」");
     
     Response.Write("<p>");
     
     if(answer.toPrecision(3)>18.5&&answer.toPrecision(3)<=24){//找到1
      Response.Write("健康解析:");
      Response.Write("<p>");
     Response.Write("是健康的一般體重!");
      Response.Write("<p>");
     
     
     
     
       peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "預設人名";	
	            
	            
	            
	          
	            
	            
	            
      url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) = 0;	// 若 Application(url) 不存在，則設定其為 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {//找到
                var old = Application(url);
                var oldpeople = Application("peoplename");
                 
                  Application("peoplename")=servername ;
                 Application(url)=answer.toPrecision(3)
                 Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                 Response.Write("伺服器上之前最健康的人是:「"+oldpeople+"」，他的BMI是:「"+old+"」，但你比他健康"); 
                 Response.Write("<p>");
                  Response.Write("所以你擊敗他成為這伺服器中最健康的人!"); 
                }//找到
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {//找到
              

                Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                Response.Write("伺服器上最健康的人是:「"+Application("peoplename")+"」，他的BMI是:「"+Application(url)+"」，但你比他不健康"); 
                   Response.Write("<p>");
                    Response.Write("所以他現在還是伺服器中最健康的人!");
                    Response.Write("<p>");
                 Response.Write("所以請你多運動，多吃蔬果，早睡早起，最後就能贏伺服器上的健康之王><"); 
                 
                 
                }//找到
                else if(Math.abs(answer.toPrecision(3)-21)==Math.abs(Application(url)-21))
                {//找到
              
                var old = Application(url);
                var oldpeople = Application("peoplename");
                 
                  Application("peoplename")=servername ;
                 Application(url)=answer.toPrecision(3)
                 Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                 Response.Write("伺服器上之前最健康的人是:「"+oldpeople+"」，他的BMI是:「"+old+"」，你跟他一樣健康"); 
                 Response.Write("<p>");
                  Response.Write("但你比他晚登入，所以你擊敗他成為這伺服器中最健康的人!"); 
                }//找到
                
                
           
     
     }//找到  1
     
     
     
     else if(answer.toPrecision(3)>=25){//找到2
 
                 Response.Write("健康解析:");
                  Response.Write("<p>");
       Response.Write("是肥胖的體重!");
          Response.Write("<p>");
          Response.Write("<hr>");
          
          
       peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "預設值";	
	            
	            
	            
           url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) = 0;	// 若 Application(url) 不存在，則設定其為 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {  //找到
                var old = Application(url);
                var oldpeople = Application("peoplename");
                  Application("peoplename")=servername;
                 Application(url)=answer.toPrecision(3)
                  Response.Write("<p>");
                 Response.Write("排名分析:");
               
                  Response.Write("<p>");
                 Response.Write("伺服器上之前最健康的人是:「"+oldpeople+"」，他的BMI是:「"+old+"」，但你比他健康"); 
                 Response.Write("<p>");
                  Response.Write("所以你擊敗他成為這伺服器中最健康的人!"); 
                }  //找到 
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {  //找到
              
           Response.Write("<p>");
                Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                Response.Write("伺服器上最健康的人是:「"+Application("peoplename")+"」，他的BMI是:「"+Application(url)+"」，但你比他不健康"); 
                   Response.Write("<p>");
                    Response.Write("所以他現在還是伺服器中最健康的人!");
                    Response.Write("<p>");
                 Response.Write("所以請你多運動，多吃蔬果，早睡早起，最後就能贏伺服器上的健康之王><"); 
                 
                 
                }  //找到
           

     }//找到2
     
     
     else if (answer.toPrecision(3)<=18.5){//找到3
              Response.Write("<p>");
    
                 Response.Write("健康解析:");
                  Response.Write("<p>");
      Response.Write("是過輕的體重!!");
       Response.Write("<p>");
       
        peoplename = Request.ServerVariables("PEOPLENAME");
             if (Application("peoplename") == null)
	            Application("peoplename") = "預設值";	
	            
	            
       url = Request.ServerVariables("URL");
             if (Application(url) == null)
	            Application(url) =0;	// 若 Application(url) 不存在，則設定其為 0
         
             
                if(Math.abs(answer.toPrecision(3)-21)<Math.abs(Application(url)-21))
                {//找到
                var old = Application(url);
                var oldpeople = Application("peoplename");
                  Application("peoplename")=servername;
                 Application(url)=answer.toPrecision(3)
                  Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                 Response.Write("伺服器上之前最健康的人是:「"+oldpeople+"」，他的BMI是:「"+old+"」，但你比他健康"); 
                 Response.Write("<p>");
                  Response.Write("所以你擊敗他成為這伺服器中最健康的人!"); 
                }//找到
                else if(Math.abs(answer.toPrecision(3)-21)>Math.abs(Application(url)-21))
                {//找到
               Response.Write("<p>");
            
                Response.Write("<p>");
                 Response.Write("排名分析:");
                  Response.Write("<p>");
                Response.Write("伺服器上最健康的人是:「"+Application("peoplename")+"」，他的BMI是:「"+Application(url)+"」，但你比他不健康"); 
                   Response.Write("<p>");
                    Response.Write("所以他現在還是伺服器中最健康的人!");
                    Response.Write("<p>");
                 Response.Write("所以請你多運動，多吃蔬果，早睡早起，最後就能贏伺服器上的健康之王><"); 
                 
                }//找到
           
     }//找到3
     }
     Response.Write("</h2>");
     
      if(space[0]!=0){//找到
		count++;
        } /////找到
    }/////////////////////////////2
    
	}///////////////////////////////////////////////////////1

%>


                <p>
                     
                    <% Bmi(Request.QueryString); %>
                         <p>
                           <hr>
                        <h3 align=center>你已使用此網頁「
                <font color=green>
                    <%=Hit()%>
                </font>」 次！</h3>
                      
                        <html/>
