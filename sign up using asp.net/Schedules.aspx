<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schedules.aspx.cs" Inherits="Schedules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
   <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                      
                            <img src="images/logo.png" />
                           
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">About</a></li>
                            <li class="active"><a href="Schedule.aspx">Schedule</a></li>
                            
                            <li>
                                
                            </li>
                            <li id="btnSignup" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                            <li id="btnSignin" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                          
                        </ul>
                    </div>
                </div>
            </div>

            <!--- Carousel -->

          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        
                        <div class="carousel-caption">
                            
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="item">
                       
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                    <div class="item">
                       
                        <div class="carousel-caption">
                          
                        </div>
                    </div>
                </div>

                <!-- Controls -->
               
               
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!--- Carousel -->

        </div>
        <br />
       

        <!--- Footer  -->


        <!--- Footer -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Courts]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Courts] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [TimeSlot1] = @original_TimeSlot1 AND [TimeSlot2] = @original_TimeSlot2 AND [TimeSlot3] = @original_TimeSlot3 AND [Description] = @original_Description" InsertCommand="INSERT INTO [Courts] ([Name], [TimeSlot1], [TimeSlot2], [TimeSlot3], [Description]) VALUES (@Name, @TimeSlot1, @TimeSlot2, @TimeSlot3, @Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Courts] SET [Name] = @Name, [TimeSlot1] = @TimeSlot1, [TimeSlot2] = @TimeSlot2, [TimeSlot3] = @TimeSlot3, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [TimeSlot1] = @original_TimeSlot1 AND [TimeSlot2] = @original_TimeSlot2 AND [TimeSlot3] = @original_TimeSlot3 AND [Description] = @original_Description">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_TimeSlot1" Type="String" />
                <asp:Parameter Name="original_TimeSlot2" Type="String" />
                <asp:Parameter Name="original_TimeSlot3" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="TimeSlot1" Type="String" />
                <asp:Parameter Name="TimeSlot2" Type="String" />
                <asp:Parameter Name="TimeSlot3" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="TimeSlot1" Type="String" />
                <asp:Parameter Name="TimeSlot2" Type="String" />
                <asp:Parameter Name="TimeSlot3" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_TimeSlot1" Type="String" />
                <asp:Parameter Name="original_TimeSlot2" Type="String" />
                <asp:Parameter Name="original_TimeSlot3" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="700px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="TimeSlot1" HeaderText="TimeSlot1" SortExpression="TimeSlot1" />
                <asp:BoundField DataField="TimeSlot2" HeaderText="TimeSlot2" SortExpression="TimeSlot2" />
                <asp:BoundField DataField="TimeSlot3" HeaderText="TimeSlot3" SortExpression="TimeSlot3" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>

    </form>
    
    </body>
</html>

