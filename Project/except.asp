<%@language=Javascript%>
    <%title="���ں����{���]�p����Project"%>
            <!--#include file="head2.inc"-->
            <hr>
           <h1 align=center>�i�ܸ�ƨt��</h1>
                <h3 align=center>
                <form action="except.asp?type=newspace" method="post" name="test">

                   �m�W�G<input name="�m�W" value="�b����J�m�W">

                    <hr> �嫬 (���)�G
                    <input type="radio" name="�嫬" value="A��" checked>A��
                    <input type="radio" name="�嫬" value="B��">B��
                    <input type="radio" name="�嫬" value="AB��">AB��
                    <input type="radio" name="�嫬�q" value="O��">O��
                    <hr> ���w���d�q (���)�G
                    <input type="radio" name="���w���d�q" value="���v�Ԫ�" checked>���v�Ԫ�
                    <input type="radio" name="���w���d�q" value="�C�s�]">�C�s�]
                    <input type="radio" name="���w���d�qr" value="�����">�����
                    <input type="radio" name="���w���d�q" value="�@���W�H">�@���W�H
                    <hr> �ժ����� (�ƿ�)�G
                    <input type="checkbox" name="�ժ�����" value="���ں����{���]�p">���ں����{���]�p
                    <input type="checkbox" name="�ժ�����" value="�������ҳ]�p" checked>�������ҳ]�p
                    <input type="checkbox" name="�ժ�����" value="�L�n��">�L�n��
            
                    <hr> ���w���B�� (���)�G
                    <select name="���w���B��"> 
	<option value="�x�y" selected>�x�y
	<option value="�βy">�βy
	<option value="�S�y">�S�y
	<option value="�Ф�y">�Ф�y
	</select>
                    <hr> ���ӹڷQ �G
                    <select name="���ӹڷQ" size=5 multiple>
	<option value="�n��u�{�v" selected>�n��u�{�v
	<option value="�w��u�{�v">�w��u�{�v
	<option value="�~��">�~��
	<option value="�����]�p�v">�����]�p�v
	<option value="�ؿv�v">�ؿv�v
	<option value="��C�v">��C�v
	<option value="�Ѯv">�Ѯv
	<option value="�\���~">�\���~
        
	</select>
                    <hr> �Ƨѿ��G
                    <br>
                    <textarea name="�Ƨѿ�" cols=60 rows=3>
                    �Цb���a���J�N��....
                    </textarea>
                    <center>
                        <input type="button" value="Request���" onClick="submit()"><br> �]�e�X��Y�i�ݨ��ơI�^
                    </center>

                </form>
                 <form action="index.asp" method="get" name="form" id="form">
                <h3 align=center> <input type="submit" value="�ǰe�^BMI�t��!"></h3>
            </form>

                </h3>
                <h3 align=center>�� ASP Ū����Response�������</h3>
                <!--#include file="showlist.inc"-->
                <p>
                    <% showlist(Request.Form, "�ӤH��ƪ�"); %>
                           
                           
                           
                           
                            <html/>
