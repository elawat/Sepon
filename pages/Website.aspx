<%@ Page Title="" Language="C#" MasterPageFile="~/master/About.master" AutoEventWireup="true" Inherits="Acknowledgements" Codebehind="Website.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
       <script>

           $(document).ready($(function () {
               ActivePageMainRun();
               ActivePageSide();
           }));

       </script>
    
    <p> I created this website because I wanted to learn creating websites. Thus, I see its value in rather being a good exercise than in presenting the content. While admitting it I also would like to add that I selected the topic because of the data, results of almost 1000 EDS analyses I’ve done, owned and could use for learning server-side development, and they were made fully available, as accurately as possible, so I hope they can be interesting or useful also for somebody else. </p>
    <p> When I started to work on this website I did not know much about web development. I had some experience in programming, a lot in VBA, little in VB.net and C#. All the applications I ever wrote were desktop single-language rather linear (procedural) programs. But I wanted to go online believing this will give me so much more flexibility (in my life choices) and about web development I knew only very basics: HTML for front-end structure, CSS for its style, JavaScript for its interactivity, C# for back-end stuff, and data in a database. But how this fits together, the whole infrastructure, tools, hosting, deployment were significantly beyond my comprehension.</p>
    <p>Here I will provide, and will try to keep it up-to-date, details of the technologies I used to create this website. It was an interesting journey for me, clearly not a straightforward one, and if any of this will make it in any way easier for anybody, that’s great. Also any feedback I can get would be highly appreciated. I am sure many things may have been done more efficient, cleverer, just better and I would like to improve them.</p>
    <br />
    <p>All the software or technologies used during creating this website are free and easily available to everybody. In majority they are part of Microsoft .NET.</p>
    <p class="no-indent"><b>Framework and IDE:</b> I created this website in ASP.NET using Web Forms architecture pattern starting from an empty page (available in Visual Studio templates contained too many things I did not understand). With my rather limited web development skills that seemed an easier option over MVC. I work in free Microsoft IDE, Visual Studio Community 2015.</p>
    <p class="no-indent"><b>Front-end:</b> HTML, CSS, JavaScript, jQuery</p>
    <p class="no-indent"><b>Back-end:</b> C#, Entity Framework, LINQ</p>
    <p class="no-indent"><b>Database:</b> SQL Server 2014 Express Edition (64-bit), SQL Server 2014 Management Studio, SQL Server Data Tools for Visual Studio (for ETL processing)</p>
    <p class="no-indent"><b>Data Visualisation:</b> Power BI (from desktop Power BI published to service and then to web)<p>
    <p class="no-indent"><b>Version Control:</b> GitHub Extension for Visual Studio, <a href="https://github.com/elawat" target="_blank">my GitHub profile</a><p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightSidebar" Runat="Server">
</asp:Content>

