<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KumariPriyanka_2097792_Assignment2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyle.css" rel="stylesheet" />
    </head>
<body >
    <form id="form1" runat="server">
        <div>
             <img class="topiamge" src="images/uhclimage.png"/>
             <p><asp:Label ID="lblThankYou" runat="server" Text="Thank you for your interest! Please complete the form below to request information." style="margin-left:20px;color: dodgerblue" Font-Size="Small"></asp:Label></p>
            <p><asp:Label ID="lblTheInfo" runat="server" Text="The information you provide will be kept confidential and used only to send information to you." style="margin-left:20px;color: red" Font-Size="Small" Font-Italic="True" ></asp:Label></p>
            <p><asp:Label ID="lblRequired" runat="server" Text="* = Required Field" style="margin-left:500px; color: darkred" Font-Size="Small" ></asp:Label></p>
        </div>
        <div class="topHeading">
            <asp:Label ID="lblStudInfo" runat="server" Text="Student Information"></asp:Label>
        </div>
        <div class="container">
            <div class="required">
                <asp:Label ID="lblFName" runat="server" Text="* First Name" CssClass="leftMargin" style="margin-right: 100px;"></asp:Label>
                <asp:Label ID="lblLName" runat="server" Text="* Last Name" style="margin-right: 100px;"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtFName" runat="server" class="input"></asp:TextBox>
                <asp:TextBox ID="txtLName" runat="server" class="input"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RFValFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name Required" Font-Italic="True" ForeColor="Red" style="margin-right: 50px;"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RFValLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name Required" Font-Italic="True" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblDOB" style="margin-right:100px; color:darkred;" runat="server" Text="* Date of Birth"></asp:Label> 
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label> 
            </div>
            <div>
                <asp:TextBox ID="txtDOB" runat="server" class="input" width="160px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" Width="21px" ClientIDMode="Predictable" CausesValidation="False" />
                 <asp:DropDownList ID="DDLGender" runat="server" Height="25px" style="margin-top: 0px" Width="139px"> 
                    <asp:ListItem></asp:ListItem> 
                    <asp:ListItem>Male</asp:ListItem> 
                    <asp:ListItem>Female</asp:ListItem> 
                </asp:DropDownList> 
                <asp:Calendar ID="cldDOB" runat="server" OnDataBinding="Calendar_DataBinding" Visible="False" OnSelectionChanged="Calendar_DataBinding"></asp:Calendar>
            </div>
          
            <div>
                <asp:Label ID="lblDOBFormate" runat="server" Text="[mm/dd/yyyy]"></asp:Label>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RFValDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
           </div> 
        <div class="topHeading"> 
            <asp:Label ID="lblContactInfo" runat="server" Text="Contact Information"></asp:Label> 
        </div> 
        <div class="container"> 
            <div class="required">
                <asp:Label ID="lblMailingAdd1" runat="server" Text="* Mailing Address" CssClass="leftMargin"></asp:Label> 
            </div> 
            <div> 
                <asp:TextBox ID="txtMailingAdd1" runat="server" class="contInfo"></asp:TextBox> 
            </div> 
            <div>
                <asp:RequiredFieldValidator ID="RFValMailAdd" runat="server" ControlToValidate="txtMailingAdd1" ErrorMessage="Mail Address Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
            </div> 
            <div>
                <asp:Label ID="lblMailingAdd2" runat="server" Text="Mailing Address 2" CssClass="leftMargin" style="color: black"></asp:Label> 
            </div> 
            <div> 
                <asp:TextBox ID="txtMailingAdd2" runat="server" class="contInfo" ></asp:TextBox> 
            </div> 
             <div>
                 <asp:Label ID="lblCity" runat="server" Text="* City" CssClass="leftMargin"></asp:Label> 
                 <asp:Label ID="lblState" runat="server" Text="* State" CssClass="leftMargin"></asp:Label> 
                 <asp:Label ID="lblZipCode" runat="server" Text="* ZipCode" CssClass="leftMargin"></asp:Label> 
            </div>  
            <div> 
                <asp:TextBox ID="txtCity" runat="server" class="input"></asp:TextBox> 
                <asp:DropDownList ID="DDLState" runat="server" Height="25px" style="margin-top: 0px" Width="170px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AK</asp:ListItem>
                    <asp:ListItem>AZ</asp:ListItem>
                    <asp:ListItem>AR</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>CO</asp:ListItem>
                    <asp:ListItem>CT</asp:ListItem>
                    <asp:ListItem>DE</asp:ListItem>
                    <asp:ListItem>FL</asp:ListItem>
                    <asp:ListItem>GA</asp:ListItem>
                    <asp:ListItem>HI</asp:ListItem>
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>IL</asp:ListItem>
                    <asp:ListItem>IN</asp:ListItem>
                    <asp:ListItem>IA</asp:ListItem>
                    <asp:ListItem>KS</asp:ListItem>
                    <asp:ListItem>KY</asp:ListItem>
                    <asp:ListItem>LA</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>MD</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MI</asp:ListItem>
                    <asp:ListItem>MN</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MO</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>NE</asp:ListItem>
                    <asp:ListItem>NV</asp:ListItem>
                    <asp:ListItem>NH</asp:ListItem>
                    <asp:ListItem>NJ</asp:ListItem>
                    <asp:ListItem>NM</asp:ListItem>
                    <asp:ListItem>NY</asp:ListItem>
                    <asp:ListItem>NC</asp:ListItem>
                    <asp:ListItem>ND</asp:ListItem>
                    <asp:ListItem>OH</asp:ListItem>
                    <asp:ListItem>OK</asp:ListItem>
                    <asp:ListItem>OR</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>RI</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SD</asp:ListItem>
                    <asp:ListItem>TN</asp:ListItem>
                    <asp:ListItem>TX</asp:ListItem>
                    <asp:ListItem>UT</asp:ListItem>
                    <asp:ListItem>VT</asp:ListItem>
                    <asp:ListItem>VA</asp:ListItem>
                    <asp:ListItem>WA</asp:ListItem>
                    <asp:ListItem>WV</asp:ListItem>
                    <asp:ListItem>WI</asp:ListItem>
                    <asp:ListItem>WY</asp:ListItem>
                </asp:DropDownList>
                 <asp:TextBox ID="txtZipCode" runat="server" class="input"></asp:TextBox> 
            </div> 
            <div>
                <asp:RequiredFieldValidator ID="RFValCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City Required" Font-Italic="True" ForeColor="Red" style="margin-right: 100px;"></asp:RequiredFieldValidator>      
                <asp:RequiredFieldValidator ID="RFValState" runat="server" ControlToValidate="DDLState" ErrorMessage="State Required" Font-Italic="True" ForeColor="Red" style="margin-right: 80px;"></asp:RequiredFieldValidator>      
                <asp:RequiredFieldValidator ID="RFValZipCode" runat="server" ControlToValidate="txtZipCode" ErrorMessage="Zip Code Required" Font-Italic="True" ForeColor="Red" ></asp:RequiredFieldValidator>       
            </div>
            <div>
                 <asp:Label ID="lblMobile" runat="server" Text="* Mobile" CssClass="leftMargin"></asp:Label> 
                 <asp:Label ID="lblMayText" runat="server" Text="* May we text you?" CssClass="leftMargin"></asp:Label>
            </div> 
            <div>
                <asp:TextBox ID="txtMobile1" runat="server" class="mobile"></asp:TextBox>
                <asp:Label ID="lblMobile1" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtMobile2" runat="server" class="mobile"></asp:TextBox>
                <asp:Label ID="lblMobile2" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtMobile3" runat="server" class="mobile"></asp:TextBox>
                <asp:DropDownList ID="ddlMayText" runat="server" Height="25px" style="margin-left: 20px" Width="139px"> 
                    <asp:ListItem></asp:ListItem> 
                    <asp:ListItem>Yes</asp:ListItem> 
                    <asp:ListItem>No</asp:ListItem> 
                </asp:DropDownList> 
            </div> 
            <div>
                 <asp:RequiredFieldValidator ID="RFValMobile" runat="server" ControlToValidate="txtMobile1" ErrorMessage="Mobile Number Required" Font-Italic="True" ForeColor="Red" style="margin-right: 30px;"></asp:RequiredFieldValidator>
                 <asp:RequiredFieldValidator ID="RFValMayText" runat="server" ControlToValidate="ddlMayText" ErrorMessage="May Text you Required" Font-Italic="True" ForeColor="Red" ></asp:RequiredFieldValidator>      
            </div>
            <div>
                <asp:TextBox ID="txtOther1" runat="server" class="mobile"></asp:TextBox>
                <asp:Label ID="lblOther1" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtOther2" runat="server" class="mobile"></asp:TextBox>
                <asp:Label ID="lblOther2" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtOther3" runat="server" class="mobile"></asp:TextBox>
            </div>
            <div>
                 <asp:Label ID="lblEmail" runat="server" Text="* Email" CssClass="leftMargin"></asp:Label> 
            </div>
            <div> 
                <asp:TextBox ID="txtEmail" runat="server" class="contInfo"></asp:TextBox> 
            </div>
               <div>
                <asp:RequiredFieldValidator ID="RFValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address Required" Font-Italic="True" ForeColor="Red" style="margin-right: 100px;"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RFValEmailFormat" ControlToValidate="txtEmail" runat="server"  ErrorMessage="Check Email Format" Font-Italic="True" ForeColor="Red" ValidationExpression="^\S+@\S+$" ViewStateMode="Disabled"></asp:RegularExpressionValidator>   
            </div>
        </div>
        <div class="topHeading"> 
            <asp:Label ID="lblAcedemicInfo" runat="server" Text="Acedemic Information"></asp:Label> 
        </div> 
        <div class="container"> 
            <div class="required">
                <div>
                 <asp:Label ID="lblSemEnroll" runat="server" Text="* Semester you wish to Enroll" CssClass="leftMargin"></asp:Label> 
                 <asp:Label ID="lblCampus" runat="server" Text="*Campus" CssClass="leftMargin"></asp:Label>
                </div> 
                <div>
                    <asp:DropDownList ID="ddlSemEnroll" runat="server" Height="25px"  Width="139px"> 
                        <asp:ListItem></asp:ListItem> 
                        <asp:ListItem>Summer 2022</asp:ListItem> 
                        <asp:ListItem>Fall 2022</asp:ListItem>
                        <asp:ListItem>Spring 2023</asp:ListItem> 
                        <asp:ListItem>Summer 2023</asp:ListItem> 
                        <asp:ListItem>Fall 2023</asp:ListItem>
                        <asp:ListItem>Spring 2024</asp:ListItem>
                        <asp:ListItem>Summer 2024</asp:ListItem> 
                        <asp:ListItem>Fall 2024</asp:ListItem>
                        <asp:ListItem>Spring 2025</asp:ListItem>
                        <asp:ListItem>Summer 2025</asp:ListItem> 
                        <asp:ListItem>Fall 2025</asp:ListItem>
                    </asp:DropDownList> 
                    <asp:DropDownList ID="ddlCampus" runat="server" Height="25px" style="margin-left: 180px" Width="139px"> 
                        <asp:ListItem></asp:ListItem> 
                        <asp:ListItem>On Campus/ Off Campus</asp:ListItem> 
                        <asp:ListItem>Online Only</asp:ListItem> 
                    </asp:DropDownList> 
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RFValSemEnroll" runat="server" ControlToValidate="ddlSemEnroll" ErrorMessage="Semester Enroll Required" Font-Italic="True" ForeColor="Red" style="margin-right: 150px;"></asp:RequiredFieldValidator>      
                    <asp:RequiredFieldValidator ID="RFValCampus" runat="server" ControlToValidate="ddlCampus" ErrorMessage="Campus Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
                </div> 
                <div>
                    <asp:Label ID="lblProgInterest" runat="server" Text="* Program of Interest" CssClass="leftMargin"></asp:Label>
                </div>
                <div>
                     <asp:DropDownList ID="ddlProgInterest" runat="server" Height="25px" Width="139px"> 
                        <asp:ListItem></asp:ListItem> 
                        <asp:ListItem>Accounting MS</asp:ListItem> 
                        <asp:ListItem>Applied Behavior Analysis Certification</asp:ListItem>
                        <asp:ListItem>Behavior Analysis MA</asp:ListItem> 
                        <asp:ListItem>Biological Science MS</asp:ListItem> 
                        <asp:ListItem>Biotechnology MS</asp:ListItem>
                        <asp:ListItem>Business Administration MBA</asp:ListItem>
                        <asp:ListItem>Business Applications Development Certification</asp:ListItem> 
                        <asp:ListItem>Business Computer Networking & Security Certification</asp:ListItem>
                        <asp:ListItem>Business Database Development & Administration Certification</asp:ListItem>
                        <asp:ListItem>Chemistry MS</asp:ListItem> 
                        <asp:ListItem>Clinical Mental Health Counseling MS</asp:ListItem>
                        <asp:ListItem>Clinical Psychology MA</asp:ListItem> 
                        <asp:ListItem>Clinical Psychology/School Psychology PsyD</asp:ListItem>
                        <asp:ListItem>Computer Science MS</asp:ListItem> 
                        <asp:ListItem>Counseling MS</asp:ListItem>
                        <asp:ListItem>Counseling MS-Alief</asp:ListItem> 
                        <asp:ListItem>Counseling MS-Galena Park</asp:ListItem>
                        <asp:ListItem>Counseling MS-Pearland</asp:ListItem> 
                        <asp:ListItem>Criminology MA</asp:ListItem>
                        <asp:ListItem>Criminology MA-Pearland</asp:ListItem> 
                        <asp:ListItem>Cross-Cultural and Global Studies MA</asp:ListItem>
                        <asp:ListItem>Curriculum & Instruction EdD</asp:ListItem> 
                        <asp:ListItem>Curriculum & Instruction MS</asp:ListItem>
                        <asp:ListItem>Data Science MS</asp:ListItem> 
                        <asp:ListItem>Digital Media Studies MA</asp:ListItem>
                        <asp:ListItem>Early Childhood Education MS</asp:ListItem> 
                        <asp:ListItem>Education Leadership EdD</asp:ListItem>
                        <asp:ListItem>Education Leadership EdD-Pearland</asp:ListItem> 
                        <asp:ListItem>Education Managment MS</asp:ListItem>
                        <asp:ListItem>Education Mgmt MS-Alief</asp:ListItem> 
                        <asp:ListItem>Education Mgmt MS-Pearland</asp:ListItem>
                        <asp:ListItem>Engineering Managment MS</asp:ListItem> 
                        <asp:ListItem>Engineering Managment MS-Pearland</asp:ListItem>
                        <asp:ListItem>Environmental Management MS</asp:ListItem> 
                        <asp:ListItem>Environmental Science MS</asp:ListItem>
                        <asp:ListItem>Excercise and Health Science MS</asp:ListItem> 
                        <asp:ListItem>Family Therapy MA</asp:ListItem>
                        <asp:ListItem>Finance MS</asp:ListItem> 
                        <asp:ListItem>Grad Endorsement Certification</asp:ListItem>
                        <asp:ListItem>Grad Supplemental Certification</asp:ListItem> 
                        <asp:ListItem>Graduate Other Certification</asp:ListItem>
                        <asp:ListItem>Graduate Supplemental Certification</asp:ListItem> 
                        <asp:ListItem>Graduate Teacher Certification</asp:ListItem>
                        <asp:ListItem>Healthcare & Bussiness Administration MHA/MBA</asp:ListItem> 
                        <asp:ListItem>Healthcare Administration MHA</asp:ListItem>
                        <asp:ListItem>Histroy MA</asp:ListItem> 
                        <asp:ListItem>Humanities Licensed Professional Counselor Certicicate 2025</asp:ListItem>
                        <asp:ListItem>Humanities MA</asp:ListItem> 
                        <asp:ListItem>Industrial Organization Psychology MA</asp:ListItem>
                        <asp:ListItem>Industrial Organization Psychology MA-Pearland</asp:ListItem> 
                        <asp:ListItem>Information Technology Certificate</asp:ListItem>
                        <asp:ListItem>Instructional Design & Technology MS</asp:ListItem> 
                        <asp:ListItem>Literate MA</asp:ListItem>
                        <asp:ListItem>Management Information System Certification</asp:ListItem> 
                        <asp:ListItem>Management Information System MS</asp:ListItem>
                        <asp:ListItem>Management of Technology Certification</asp:ListItem> 
                        <asp:ListItem>Masters of Art in Teching MAT</asp:ListItem>
                        <asp:ListItem>Mathematical Science MS</asp:ListItem> 
                        <asp:ListItem>Multicultural Studies in Ed MS</asp:ListItem>
                        <asp:ListItem>Occupational Saftey & Health MS</asp:ListItem> 
                        <asp:ListItem>Physics MS</asp:ListItem>
                        <asp:ListItem>Pre for Teaching: Preschool-Elementary MS</asp:ListItem> 
                        <asp:ListItem>Professional Accounting MS</asp:ListItem>
                        <asp:ListItem>Professional Development</asp:ListItem> 
                        <asp:ListItem>Project Management and Six Sigma Certification</asp:ListItem>
                        <asp:ListItem>Psycology MS</asp:ListItem> 
                        <asp:ListItem>Psycology MS-Pearland</asp:ListItem>
                        <asp:ListItem>Reading MS</asp:ListItem> 
                        <asp:ListItem>School Library/Information Science MS</asp:ListItem>
                        <asp:ListItem>School Library/Information Science MS-Alief</asp:ListItem> 
                        <asp:ListItem>School Psycology SSp</asp:ListItem>
                        <asp:ListItem>Serious Games and Simulation MS</asp:ListItem> 
                        <asp:ListItem>Sociology MA</asp:ListItem>
                        <asp:ListItem>Software Engineering Certification</asp:ListItem> 
                        <asp:ListItem>Software Engineering MS</asp:ListItem>
                        <asp:ListItem>Statisticsn MS</asp:ListItem> 
                        <asp:ListItem>Undeclared Bussiness Graduate</asp:ListItem>
                        <asp:ListItem>Undeclared Education Graduate</asp:ListItem> 
                        <asp:ListItem>Undeclared Science and Engineering Graduate</asp:ListItem>
                        <asp:ListItem>Undeclared/Non-Degree Human Science & Humanities Graduate</asp:ListItem> 
                    </asp:DropDownList> 
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RFValdProgInterest" runat="server" ControlToValidate="ddlProgInterest" ErrorMessage="Semester Enroll Required" Font-Italic="True" ForeColor="Red" style="margin-right: 150px;"></asp:RequiredFieldValidator>      
                </div>
                 <div>
                    <asp:Label ID="lblInternational" runat="server" Text="Are you an International Student?" CssClass="leftMargin" style="color:black;"></asp:Label>
                </div>
                <div>
                     <asp:DropDownList ID="ddlInternational2" runat="server" Height="25px" Width="139px"> 
                        <asp:ListItem></asp:ListItem> 
                        <asp:ListItem>Yes</asp:ListItem> 
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList> 
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RFValddlInternational2" runat="server" ControlToValidate="ddlInternational2" ErrorMessage="Campus Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
                </div>
            </div>
        </div>
         <div class="topHeading"> 
            <asp:Label ID="lblHousing" runat="server" Text="Housing"></asp:Label> 
        </div> 
        <div class="container"> 
            <div class="required"> 
                <div>
                 <asp:Label ID="lblInterestedHousing" runat="server" Text="* Are You Insterested in On-Campus Housing?" CssClass="leftMargin"></asp:Label> 
                </div> 
                <div>
                    <asp:DropDownList ID="ddlInterestedHousing" runat="server" Height="25px" Width="139px"> 
                        <asp:ListItem></asp:ListItem> 
                        <asp:ListItem>Yes</asp:ListItem> 
                        <asp:ListItem>No</asp:ListItem> 
                    </asp:DropDownList> 
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RFValInternational" runat="server" ControlToValidate="ddlInterestedHousing" ErrorMessage="Insterested in Housing Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
                </div>
            </div> 
        </div>

        <div class="topHeading"> 
            <asp:Label ID="lblHeadingVeteran" runat="server" Text="Veteran Information"></asp:Label> 
        </div> 
        <div class="container"> 
            <div class="required"> 
                <div>
                 <asp:Label ID="lblQusVeteran" runat="server" Text="* Do you plan on using veteran education benefits at UHCL?" CssClass="leftMargin"></asp:Label> 
                </div> 
                <div>
                    <asp:DropDownList ID="ddlQusVeteran" runat="server" Height="25px" Width="139px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>I am not Vetran</asp:ListItem> 
                         <asp:ListItem>Yes</asp:ListItem> 
                        <asp:ListItem>No</asp:ListItem> 
                    </asp:DropDownList> 
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RFValQusVeteran" runat="server" ControlToValidate="ddlQusVeteran" ErrorMessage="Veteran Field Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>      
                </div>
            </div> 
        </div>

        <div class="topHeading"> 
            <asp:Label ID="lblHeadingUHCL" runat="server" Text="How did you hear about UHCL?"></asp:Label> 
        </div>
        <div class="container"> 
                <div>
                 <asp:Label ID="lblSelectUHCL" runat="server" Text="Select all that apply:" CssClass="leftMargin" style="color:black;"></asp:Label> 
                </div> 
                <div> 
                    <asp:ListBox ID="lstBoxUHCL" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>College / Career Fair</asp:ListItem>
                        <asp:ListItem>Email from UHCL</asp:ListItem>
                        <asp:ListItem>Social Media</asp:ListItem>
                        <asp:ListItem>Teacher/Professor</asp:ListItem>
                        <asp:ListItem>Advisor/Counselor</asp:ListItem>
                        <asp:ListItem>Family/Friend</asp:ListItem>
                        <asp:ListItem>Campus Event Invitation</asp:ListItem>
                        <asp:ListItem>Letter / Postcard from UHCL</asp:ListItem>
                        <asp:ListItem>UHCL Poster/Billboard</asp:ListItem>
                        <asp:ListItem>Employer</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:ListBox>
                </div>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="button" OnClick="btnSubmit_Click"/>
            <asp:Button ID="btnClear" runat="server" Text="Clear" style="margin-left: 10px;" class="button" OnClick="btnClear_Click"/>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" Text="In progress.."></asp:Label> 
        </div>
        <div>
            <p> <asp:Label ID="labEndText" runat="server" Text="By clicking the submit button, I agree that UHCL may email me or contact me regarding educational services by telephone and/or text message utilizing automated technology at the telephone number(s) provided above.
I understand this consent is not required to attend UHCL."  style="color: black" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </p>
        <div>

    </form>
</body>
</html>
