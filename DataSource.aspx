<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categories</title>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList Sections = new ArrayList();
            Sections.Add("Organic Produce");
            Sections.Add("Baking");
            Sections.Add("Soups");
            Sections.Sort();
            // This selectin is great
            // a adding more studf fijg[gn[ogn i[dihfiehtg ohdfio[heibht jhfi[hei0etbh oihforehgj hfufbegtu hfoisfheti hi[dshoidhdv[sf 
            // b
            // c
            // d
            // e
            // f
            // g
        
            ddlSections.DataSource = Sections;
            ddlSections.DataBind();
        } 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlSections" runat="server">
        </asp:DropDownList>
    
    </div>
        
        <asp:DropDownList ID="ddlCategories" runat="server" DataSourceID="grocergo" DataTextField="CategoryName" DataValueField="CategoryID">
            <asp:ListItem>ddlCategories</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="grocergo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
