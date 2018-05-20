<%@language=Javascript%>
    <%title="網際網路程式設計期末Project"%>
            <!--#include file="head2.inc"-->
            <hr>
           <h1 align=center>展示資料系統</h1>
                <h3 align=center>
                <form action="except.asp?type=newspace" method="post" name="test">

                   姓名：<input name="姓名" value="在此輸入姓名">

                    <hr> 血型 (單選)：
                    <input type="radio" name="血型" value="A型" checked>A型
                    <input type="radio" name="血型" value="B型">B型
                    <input type="radio" name="血型" value="AB型">AB型
                    <input type="radio" name="血型通" value="O型">O型
                    <hr> 喜歡的卡通 (單選)：
                    <input type="radio" name="喜歡的卡通" value="火影忍者" checked>火影忍者
                    <input type="radio" name="喜歡的卡通" value="七龍珠">七龍珠
                    <input type="radio" name="喜歡的卡通r" value="航海王">航海王
                    <input type="radio" name="喜歡的卡通" value="一拳超人">一拳超人
                    <hr> 擅長的課 (複選)：
                    <input type="checkbox" name="擅長的課" value="網際網路程式設計">網際網路程式設計
                    <input type="checkbox" name="擅長的課" value="視窗環境設計" checked>視窗環境設計
                    <input type="checkbox" name="擅長的課" value="微積分">微積分
            
                    <hr> 喜歡的運動 (單選)：
                    <select name="喜歡的運動"> 
	<option value="籃球" selected>籃球
	<option value="棒球">棒球
	<option value="壘球">壘球
	<option value="羽毛球">羽毛球
	</select>
                    <hr> 未來夢想 ：
                    <select name="未來夢想" size=5 multiple>
	<option value="軟體工程師" selected>軟體工程師
	<option value="硬體工程師">硬體工程師
	<option value="業務">業務
	<option value="網頁設計師">網頁設計師
	<option value="建築師">建築師
	<option value="刺青師">刺青師
	<option value="老師">老師
	<option value="餐飲業">餐飲業
        
	</select>
                    <hr> 備忘錄：
                    <br>
                    <textarea name="備忘錄" cols=60 rows=3>
                    請在此地方輸入意見....
                    </textarea>
                    <center>
                        <input type="button" value="Request資料" onClick="submit()"><br> （送出後即可看到資料！）
                    </center>

                </form>
                 <form action="index.asp" method="get" name="form" id="form">
                <h3 align=center> <input type="submit" value="傳送回BMI系統!"></h3>
            </form>

                </h3>
                <h3 align=center>由 ASP 讀取並Response的表單資料</h3>
                <!--#include file="showlist.inc"-->
                <p>
                    <% showlist(Request.Form, "個人資料表"); %>
                           
                           
                           
                           
                            <html/>
