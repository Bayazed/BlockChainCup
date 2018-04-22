<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BlockChain Skills</title>
    <style>
        body {
            margin: 0 auto;
            padding: 0 auto;
        }
        #main {
            position: fixed;
            width: 100%;
            height: 100%;
            background: rgb(91, 81, 255);
            background: -webkit-linear-gradient(0deg, rgb(91, 81, 255) 0%, rgb(68, 199, 255) 100%);
            background: -o-linear-gradient(0deg, rgb(91, 81, 255) 0%, rgb(68, 199, 255) 100%);
            background: -ms-linear-gradient(0deg, rgb(91, 81, 255) 0%, rgb(68, 199, 255) 100%);
            background: linear-gradient(0deg, rgb(91, 81, 255) 0%, rgb(68, 199, 255) 100%);
        }
        .logo {
            display: flex;
            align-items: center;
            align-content: center;
            justify-content: center;
        }
        span {
            font-size: 50px;
            color: #ffffff;
        }
        h1 {
            font-size: 50px !important;
            color: #ffffff !important;
        }
        .logo:first-child {
            margin-top: 10%;
            display: flex;
            align-items: center;
            align-content: center;
            justify-content: center;
        }
        .logo:last-child {
            margin-top: 40px;
        }
        .r {
            background: #ffffff !important;
            border: none !important;
            color: rgb(84,122,255) !important;
            width: 200px;
        }
        .uk-button-default {
            border: none !important;
        }

    </style>
    <link href="/css/uikit.css" rel="stylesheet">
    <link href="/css/uikit-rtl.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/js/uikit.js" type="text/javascript"></script>
    <script src="/js/uikit-icons.js" type="text/javascript"></script>
</head>
<body>
    <div id="main">
        <div class="logo">
            <span uk-icon="icon: link; ratio: 10" style="color: rgb(255, 255, 255)"></span>
        </div>
        <div class="logo">
            <h1 class="uk-text-large">BlockChain Skills</h1>
        </div>
        <div class="logo">
            <a href="/register"><button class="uk-button uk-button-default r">SIGN UP</button></a>
            <button class="uk-button uk-button-default"></button>
            <a href="/login"><button class="uk-button uk-button-default r">SIGN IN</button></a>
        </div>
    </div>
</body>
</html>