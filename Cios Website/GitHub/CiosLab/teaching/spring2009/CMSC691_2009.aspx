﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CMSC691_2009.aspx.cs" Inherits="cs_dmb_teaching_Default" Title="CMSC691" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="font-size: small; width: 792px; font-family: Verdana; position: static;
        height: 176px">
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 36px">
            </td>
            <td colspan="5" style="font-weight: lighter; font-size: large; color: #cc3300; font-family: Verdana;
                height: 36px; text-align: center">
                CMSC 691: DATA MINING<br />
                Spring 2009</td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 2px">
            </td>
            <td colspan="3" style="font-family: Verdana; height: 2px">
            </td>
            <td style="width: 393px; font-family: Verdana; height: 2px">
            </td>
            <td style="width: 393px; font-family: Verdana; height: 2px">
            </td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 10px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 111px; font-family: Verdana; height: 20px">
                Instructor:</td>
            <td style="width: 479px; font-family: Verdana; height: 20px">
                &nbsp;Dr. Krzysztof Cios</td>
            <td style="width: 393px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 393px; font-family: Verdana; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 21px">
            </td>
            <td style="width: 10px; font-family: Verdana; height: 21px">
            </td>
            <td style="width: 111px; font-family: Verdana; height: 21px">
                E-mail:</td>
            <td style="width: 479px; font-family: Verdana; height: 21px">
                &nbsp;kcios@vcu.edu</td>
            <td style="width: 393px; font-family: Verdana; height: 21px">
            </td>
            <td style="width: 393px; font-family: Verdana; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 21px">
            </td>
            <td style="width: 10px; font-family: Verdana; height: 21px">
            </td>
            <td style="width: 111px; font-family: Verdana; height: 21px">
                Lectures:</td>
            <td colspan="2" style="font-family: Verdana; height: 21px">
                &nbsp;MW 9:30 ~ 10:45 {West Eng. Bldg.(old bldg.) 105}</td>
            <td style="width: 393px; font-family: Verdana; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 18px">
            </td>
            <td style="width: 10px; font-family: Verdana; height: 18px">
            </td>
            <td style="width: 111px; font-family: Verdana; height: 18px">
                Office Hours:</td>
            <td style="width: 479px; font-family: Verdana; height: 18px">
                &nbsp;MR 1:30 ~ 2:30 plus by appointment</td>
            <td style="width: 393px; font-family: Verdana; height: 18px">
            </td>
            <td style="width: 393px; font-family: Verdana; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 14px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 10px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 111px; font-family: Verdana; height: 15px">
                Text:</td>
            <td style="font-family: Verdana; height: 15px" colspan="3">
                &nbsp;"<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Publications/books.aspx"
                    Style="position: static">Data Mining: A Knowledge Discovery Approach</asp:HyperLink>"
                By Cios et al., Springer 2007&nbsp;</td>
        </tr>
    </table>
    <br />
    <table style="font-size: small; width: 792px; font-family: Verdana; position: static;
        border-collapse: separate; height: 56px">
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 10px">
            </td>
            <td colspan="3" style="font-family: Verdana; height: 10px">
                Announcements</td>
            <td style="width: 690px; font-family: Verdana; height: 10px">
            </td>
            <td style="width: 100px; font-family: Verdana; height: 10px">
            </td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 20px; font-family: Verdana; height: 20px; background-color: silver" align="center">
                No.</td>
            <td style="font-family: Verdana; height: 20px; background-color: silver; width: 100px;" align="center">
                &nbsp;Date</td>
            <td colspan="2" style="font-family: Verdana; height: 20px; background-color: silver">
                &nbsp;Issue</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 20px; font-family: Verdana; height: 20px" align="center">
                1</td>
            <td style="width: 100px; font-family: Verdana; height: 20px" align="center">
                1/12/2009</td>
            <td colspan="2" style="font-family: Verdana; height: 20px">
                &nbsp;Tentative class schedule is posted
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/teaching/spring2009/CMSC691ClassSchedule_2009.aspx"
                    Style="position: static">here</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 20px; background-color: #eaeaea">
                2</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 20px; background-color: #eaeaea">
                2/09/2009</td>
            <td colspan="2" style="width: 690px; font-family: Verdana; height: 20px; background-color: #eaeaea; text-decoration: underline;">
                &nbsp;There are some suggestions for your progress and final presentation in the
                WEKA ppt</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                3</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                3/01/2009</td>
            <td colspan="2" style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Grade is posted
                <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/teaching/spring2009/Grade.aspx"
                    Style="position: static">here</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="background-color: #eaeaea">
                4</td>
            <td align="center" style="background-color: #eaeaea">
                3/10/2009</td>
            <td colspan="2" style="background-color: #eaeaea">
                &nbsp;<asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/teaching/spring2009/Grade.aspx"
                    Style="position: static">Midterm grades</asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center">
                5</td>
            <td align="center">
                3/10/2009</td>
            <td colspan="2">
                &nbsp;The class information for the first data sets is provided for assessing your
                clustering results. According to the assessment result, please improve your mining
                model if it's needed. Then report all the results and assessments in your final
                presentation. &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="background-color: #eaeaea">
                6</td>
            <td align="center" style="background-color: #eaeaea">
                3/10/2009</td>
            <td colspan="2" style="background-color: #eaeaea">
                &nbsp;Data for the second part of your class project are posted. Please build your
                mining model for classification of the data and report your mining model,
                results, assessments,etc. in your final presentation.</td>
        </tr>
    </table>
    <br />
    <table style="font-size: small; width: 792px; font-family: Verdana; position: static;
        border-collapse: separate; height: 112px">
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 10px">
            </td>
            <td colspan="4" style="font-family: Verdana; height: 10px">
                Course Materials</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 10px">
            </td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 20px; background-color: silver">
                No.</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 20px; background-color: silver">
                Date</td>
            <td align="left" style="width: 690px; font-family: Verdana; height: 20px; background-color: silver">
                &nbsp;Topic</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 20px; background-color: silver">
                Download</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 20px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 20px">
                1</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 20px">
                1/12/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 20px">
                &nbsp;Syllabus</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 20px">
                [<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/teaching/spring2009/syllabus2009.doc"
                    Style="position: static" Target="_blank">doc</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 18px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 18px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 18px; background-color: #eaeaea;">
                2</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 18px; background-color: #eaeaea;">
                1/12/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 18px; background-color: #eaeaea;">
                &nbsp;Introduction</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 18px; background-color: #eaeaea;">
                [<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_1.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                3</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                1/12/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Knowledge Discovery Process</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_2.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                4</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                1/14/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Data</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_3.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                5</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                1/20/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Concepts of Learning, Classification and Regression</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_4.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px; background-color: #eaeaea;">
                6</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea;">
                1/24/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px; background-color: #eaeaea;">
                &nbsp;Knowledge Representation</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea;">
                [<asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_5.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                7</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                1/27/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Class Project: Spike Sorting</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Spikesorting.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                8</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                1/27/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Class Project: Reference papers</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Spike_sorting.pdf"
                    Style="position: static">pdf</asp:HyperLink>,<asp:HyperLink ID="HyperLink12" runat="server"
                        NavigateUrl="~/teaching/spring2009/classproject/SpikeSortingTechniques.pdf"
                        Style="position: static">pdf</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                9</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                1/27/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Class Project: Data sets</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Data_for_Clustering.zip"
                    Style="position: static">zip</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                10</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                1/28/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Class Project: One more good reference paper</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Lewicki-Network-98.pdf"
                    Style="position: static">pdf</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="width: 20px; font-family: Verdana; height: 15px">
                11</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                1/31/2009</td>
            <td style="width: 690px; font-family: Verdana; height: 15px">
                &nbsp;Feature Extraction and Selection Methods</td>
            <td align="center" style="width: 100px; font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_7.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                12</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                2/09/2009</td>
            <td style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;WEKA</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/teaching/spring2009/classproject/spikingclassprojectWEKA.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px">
                13</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                2/15/2009</td>
            <td style="font-family: Verdana; height: 15px">
                &nbsp;Discretization</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_8.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                14</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                2/17/2009</td>
            <td style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Unsupervised Learning: Clustering&nbsp;</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_9.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px">
                15</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                3/10/2009</td>
            <td style="font-family: Verdana; height: 15px">
                &nbsp;Class Project: Class information for the first data</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Classinformation_for_data.zip"
                    Style="position: static">zip</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                16</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                3/10/2009</td>
            <td style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Class Project(2): Data sets for classification</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/teaching/spring2009/classproject/Data_for_classification.zip"
                    Style="position: static">zip</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px">
                17</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                3/23/2009</td>
            <td style="font-family: Verdana; height: 15px">
                &nbsp;Association Rules</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_10.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                18</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                3/28/2009</td>
            <td style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                &nbsp;Inductive ML</td>
            <td align="center" style="font-family: Verdana; height: 15px; background-color: #eaeaea">
                [<asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_12.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
        <tr>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td style="width: 5px; font-family: Verdana; height: 15px">
            </td>
            <td align="center" style="font-family: Verdana; height: 15px">
                19</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                4/05/2009</td>
            <td style="font-family: Verdana; height: 15px">
                &nbsp;Assesment of data models</td>
            <td align="center" style="font-family: Verdana; height: 15px">
                [<asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="~/Publications/DMBook/Ppt/Chapter_15.ppt"
                    Style="position: static">ppt</asp:HyperLink>]</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

