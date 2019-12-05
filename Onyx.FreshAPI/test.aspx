<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Onyx.FreshAPI.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>

<script>

var person = {
    name: "Joe Doe",
    address: "123 Main St",
    phone: "555-5555"
}

var jqxhr = $.ajax({
    type: "POST",
    url: "/callback/LeadCallback.aspx",
    contentType: 'application/json; charset=utf-8',
    dataType: "json",
    timeout: 0,
    success: function () {
        alert("Success");
    },
    failure: function (error) {

        alert(error);
    },
    data: person
});

</script>
