<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign in</title>
    <link href="/css/uikit.css" rel="stylesheet">
    <link href="/css/uikit-rtl.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/js/uikit.js" type="text/javascript"></script>
    <script src="/js/uikit-icons.js" type="text/javascript"></script>
    <style>
        body {
            margin: 0 auto;
            padding: 0 auto;
        }
        .flex {
            width: 500px;
            margin: 30px auto;
            padding: 0 auto;
            text-align: center;
        }
        .flex:first-child {
            margin-top: 15%;
        }
        .r {
            width: 200px;
        }
    </style>
</head>
<body>
    <form action="/result" method="post">
        <div class="flex uk-margin"><h1 class="uk-text-large">Sign in to BlockChain Skills</h1></div>
        <div class="flex uk-margin"><input class="uk-input type="text" name="login" placeholder="Login"></div>
        <div class="flex uk-margin"><input class="uk-input type="text" name="password" placeholder="Password"></div>
        <input type="text" name="type" value="1" readonly style="display: none">
        <div class="flex uk-margin"><input class="uk-button uk-button-primary r" type="submit" value="SUBMIT"><div>
    </form>
</body>
</html>