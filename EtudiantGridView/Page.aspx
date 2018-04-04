<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="EtudiantGridView.Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="197px" ShowFooter="True" Width="602px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="Select" />
                            &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" OnClick="Button3_Click" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button4" runat="server" Text="Add" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="nom" SortExpression="nom">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nom") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nom") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="prenom" SortExpression="prenom">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("prenom") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("prenom") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="adresse" SortExpression="adresse">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("adresse") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("adresse") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ville" SortExpression="ville">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ville") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("ville") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="img" SortExpression="img">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("img") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mesetudiantConnectionString %>" DeleteCommand="DELETE FROM [etudiant] WHERE [id] = @original_id AND (([nom] = @original_nom) OR ([nom] IS NULL AND @original_nom IS NULL)) AND (([prenom] = @original_prenom) OR ([prenom] IS NULL AND @original_prenom IS NULL)) AND (([adresse] = @original_adresse) OR ([adresse] IS NULL AND @original_adresse IS NULL)) AND (([ville] = @original_ville) OR ([ville] IS NULL AND @original_ville IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))" InsertCommand="INSERT INTO [etudiant] ([nom], [prenom], [adresse], [ville], [img]) VALUES (@nom, @prenom, @adresse, @ville, @img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [nom], [prenom], [adresse], [ville], [img] FROM [etudiant]" UpdateCommand="UPDATE [etudiant] SET [nom] = @nom, [prenom] = @prenom, [adresse] = @adresse, [ville] = @ville, [img] = @img WHERE [id] = @original_id AND (([nom] = @original_nom) OR ([nom] IS NULL AND @original_nom IS NULL)) AND (([prenom] = @original_prenom) OR ([prenom] IS NULL AND @original_prenom IS NULL)) AND (([adresse] = @original_adresse) OR ([adresse] IS NULL AND @original_adresse IS NULL)) AND (([ville] = @original_ville) OR ([ville] IS NULL AND @original_ville IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_nom" Type="String" />
                    <asp:Parameter Name="original_prenom" Type="String" />
                    <asp:Parameter Name="original_adresse" Type="String" />
                    <asp:Parameter Name="original_ville" Type="String" />
                    <asp:Parameter Name="original_img" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nom" Type="String" />
                    <asp:Parameter Name="prenom" Type="String" />
                    <asp:Parameter Name="adresse" Type="String" />
                    <asp:Parameter Name="ville" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nom" Type="String" />
                    <asp:Parameter Name="prenom" Type="String" />
                    <asp:Parameter Name="adresse" Type="String" />
                    <asp:Parameter Name="ville" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_nom" Type="String" />
                    <asp:Parameter Name="original_prenom" Type="String" />
                    <asp:Parameter Name="original_adresse" Type="String" />
                    <asp:Parameter Name="original_ville" Type="String" />
                    <asp:Parameter Name="original_img" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
