@{
    ViewBag.Title = "testing";
}
<!DOCTYPE HTML>
@{ 
    string msg = ViewData["msg"] as string;
    string pic = ViewData["pic"] as string;
}
<html>
<head>

    <link href="~/Content/main.css" rel="stylesheet" />
</head>
<body>
    <h1>Testing image upload</h1>
    @using (Html.BeginForm("StoreImage",
                        "Home",
                        FormMethod.Post,
                        new { enctype = "multipart/form-data" }))
    {
        <input type="file" id="img" name="img" accept="image/*" enctype="multipart/form-data" method="POST" />
        <br><br>
        <button type="submit" id="bt" name="bt" style="width:10%;height:5%;background:red;border-radius:20px">Submit</button>
        <br><br>
        @ViewBag.Message
    }
    @if(msg != null)
    {
            <h2>@msg</h2>
    }
        @if(pic!= null)
        {
            <img style="width:100px;height:100px;text-align:center;border-radius:100%" src="~/Patient pics/@pic" />
        }
    <script src="~/Scripts/test.js"></script>
</body>
</html>