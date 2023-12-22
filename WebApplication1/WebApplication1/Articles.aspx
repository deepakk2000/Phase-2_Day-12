<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="WebApplication1.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Articles<table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ContentDBConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [Articleld] = @original_Articleld AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublisheDate] = @original_PublisheDate) OR ([PublisheDate] IS NULL AND @original_PublisheDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([Articleld], [Title], [Content], [PublisheDate]) VALUES (@Articleld, @Title, @Content, @PublisheDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ContentDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublisheDate] = @PublisheDate WHERE [Articleld] = @original_Articleld AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublisheDate] = @original_PublisheDate) OR ([PublisheDate] IS NULL AND @original_PublisheDate IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Articleld" Type="Int32" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Content" Type="String" />
                            <asp:Parameter Name="original_PublisheDate" Type="DateTime" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Articleld" Type="Int32" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Content" Type="String" />
                            <asp:Parameter Name="PublisheDate" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Content" Type="String" />
                            <asp:Parameter Name="PublisheDate" Type="DateTime" />
                            <asp:Parameter Name="original_Articleld" Type="Int32" />
                            <asp:Parameter Name="original_Title" Type="String" />
                            <asp:Parameter Name="original_Content" Type="String" />
                            <asp:Parameter Name="original_PublisheDate" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
        </h1>

</asp:Content>
