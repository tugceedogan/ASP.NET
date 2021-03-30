<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webproject.WebForm1" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Web Site</title>
    <link href="/style.css" rel="stylesheet" />
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"> </script>
    
    <script type="text/javascript">

        $("document").ready(function () {
            $("header nav ul li.konular-wrap").mouseover(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "block")
            })
            $("header nav ul li.konular-wrap").mouseleave(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "none")
            })

        })





    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <header>
                <div class="logo">
                    LOGO
                </div>

                <nav>
                    <ul>
                        <li>
                            <a href="default.aspx">ANASAYFA</a>
                        </li>
                        
                        <li class="konular-wrap">
                            <a href="#">KONULAR</a>
                            <div class="konular">
                                <ul>
                                    <li> WEB </li>
                                    <li> POGRAMLAMA </li>
                                </ul>
                            </div>
                            
                        </li>
                        
                        <li>
                            <a href="default.aspx">DUYURULAR</a>
                        </li>
                        
                        <li>
                            <a href="default.aspx">İLETİŞİM</a>
                        </li>

                    </ul>
                </nav>

                <div class="arama-wrap">

                    <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama"/>
                    <asp:Button ID="btnArama" CssClass="btnArama" Text="Ara" runat="server" />


                </div>



            </header>

            <div class="banner"> RENKLİ BİLGİLER  </div>
            <div class="sol-taraf">

                <div class="hizli-kayit">
                    <div class="ust">Hızlı Kayıt Ol</div>

                    <div class="alt">
                        <div class="Kullanici">
                            <span>Kullanıcı Adı</span>
                            <asp:TextBox ID="txtKullanıcıAdı" CssClass="textbox" runat="server"></asp:TextBox>


                        </div>
                        <div class="sifre">
                            <span>Şifre</span>
                            <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server"></asp:TextBox>


                        </div>
                        
                        <asp:Button ID="btnKayit" CssClass="btnKayit" Text="text" runat="server" OnClick="btnKayit_Click" />
                        <asp:Label ID="lblSonuc"   Text="" runat="server" />
                        
                    </div>

                </div>
                    
                <div class="duyurular">
                    <div class="ust">
                        Duyurular
                    </div>
                    <div class="alt">
                        <asp:ListView ID="lstDuyuru" runat="server">
                            <ItemTemplate>
                                 <div class="duyuru-wrap">
                                     <asp:Label Text='<%#Eval("Baslik")%>' runat="server" /><br />
                                     <asp:Label Text='<%#Eval("Duyuru")%>' runat="server" /><br />
                                     <asp:Label Text='<%#Eval("Tarih")%>' runat="server" />

                                 </div>
                            </ItemTemplate>
                        </asp:ListView>
                       
                </div>
            </div>

            </div>
            

            <div class="icerik"> 
                <div class="ust" >

                </div>
                <div class="alt">
                </div>
            </div>
            <footer> Bir Tuğçe Doğan Tasarımıdır </footer>

            </div>
         
         </div>
    </form>

</body>
</html>
