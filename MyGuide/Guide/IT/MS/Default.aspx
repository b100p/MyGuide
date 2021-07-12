<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="MyGuide.Guide.IT.MS.Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <script runat="server">


            void ItemsBulletedList_Click(object sender, System.Web.UI.WebControls.BulletedListEventArgs e)
            {

                // Change the message displayed in the label based on the index
                // of the list item that was clicked.
                string gotoPage = "";

                switch (e.Index)
                {
                    case 0:
                        gotoPage = "https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install";
                        break;
                    case 1:
                        gotoPage = "https://docs.microsoft.com/en-us/windows/deployment/windows-deployment-scenarios-and-tools";
                        break;
                    case 2:
                        gotoPage = "https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/copype-command-line-options";
                        break;

                    default:
                        throw new Exception("You did not click a valid list item.");
                        break;
                }
                Response.Redirect(gotoPage);


            }

        </script>
        <style>
            .bl:hover {
                border: solid 1px dotted black;
                /*border:dotted;*/
            }

            hr.rounded {
                border-top: 8px solid #bbb;
                border-radius: 5px;
            }

            }
        </style>

        <h3>Create working files</h3>
        <p>No matter what type of media you're going to create, the first thing to do is create a working set of WinPE files on your technician PC.</p>
        <asp:BulletedList CssClass="bl" ID="ItemsBulletedList"
            BulletStyle="Numbered"
            DisplayMode="LinkButton"
            OnClick="ItemsBulletedList_Click"
            runat="server">
            <asp:ListItem Value="https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install">Make sure your PC has the ADK and ADK WinPE add-on installed.</asp:ListItem>
            <asp:ListItem Value="https://docs.microsoft.com/en-us/windows/deployment/windows-deployment-scenarios-and-tools">Start the Deployment and Imaging Tools Environment as an administrator.</asp:ListItem>
            <asp:ListItem Value="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/copype-command-line-options">Run copype to create a working copy of the Windows PE files.</asp:ListItem>
        </asp:BulletedList>


        <p>Run <strong>copype</strong> to create a working copy of the Windows PE files.</p>
        <pre tabindex="0" class="has-inner-focus"><code data-author-content="copype amd64 C:\WinPE_amd64">copype amd64 C:\WinPE_amd64</code></pre>
        <center><asp:HyperLink runat="server" Text="ADK_DL_Link" NavigateUrl="https://download.microsoft.com/download/8/6/c/86c218f3-4349-4aa5-beba-d05e48bbc286/adk/adksetup.exe" > </asp:HyperLink> <br><asp:HyperLink runat="server" Text="ADK-WinPE-Add-On_DL_Link" NavigateUrl="https://download.microsoft.com/download/D/7/E/D7E22261-D0B3-4ED6-8151-5E002C7F823D/adkwinpeaddons/adkwinpesetup.exe" /></center>
        <hr class="rounded"/>
        <h3>Create a WinPE ISO, DVD, or CD</h3>
                <p>Use <strong>MakeWinPEMedia</strong> with the <code>/ISO</code> option to create an ISO file containing the Windows PE files:</p>
                <pre tabindex="0" class="has-inner-focus"><code data-author-content="MakeWinPEMedia /ISO C:\WinPE_amd64 C:\WinPE_amd64\WinPE_amd64.iso">MakeWinPEMedia /ISO C:\WinPE_amd64 C:\WinPE_amd64\WinPE_amd64.iso</code></pre> 

    </div>
</asp:Content>
