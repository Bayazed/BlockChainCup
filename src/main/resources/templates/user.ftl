<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your profile</title>
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
            margin: 8% auto !important;
            padding: 0 auto !important;
        }
        .alpha {
            font-size: 25px;
        }
        .beta {
            margin-left: 40px;
        }
        .b {
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="flex uk-card uk-card-default uk-width-1-2@m">
    <div class="uk-card-header">
        <div class="uk-grid-small uk-flex-middle" uk-grid>
            <div class="uk-width-auto">
                <img class="uk-border-circle" width="40" height="40" src="/img/bird.jpg">
            </div>
            <div class="uk-width-expand">
                <h3 class="uk-card-title uk-margin-remove-bottom">${login}</h3>
            </div>
        </div>
    </div>
    <div class="uk-card-body">
        <div class="uk-column-1-2 uk-column-divider">
            <p class="alpha"><span class="uk-text-bold">Alpha:</span> ${alpha}</p><br/><br/><br/>
            <p>
                <span class="uk-text-bold b">Beta:</span> ${beta}<br/>
                <span class="uk-text-bold beta">A:</span> ${beta_a}
                <span class="uk-text-bold beta">B:</span> ${beta_b}<br/>
                <span class="uk-text-bold beta">C:</span> ${beta_c}
                <span class="uk-text-bold beta">D:</span> ${beta_d}
            </p>
        </div>
    </div>
    <div class="uk-card-body">
        <span class="uk-text-bold">Skills:</span><br/>
        <p>
        <#list userSkills as key, value>
        ${key.name} <progress class="uk-progress" value="${value}" max="100"></progress><br/>
        </#list>
        </p>
    </div>
    <#--<div class="uk-card-footer">-->
        <#--<b class="uk-text-bold">Add skills:</b><br/>-->
        <#--<form action="/add_skill" method="post">-->
            <#--<p>-->
            <#--<#list skills as skill>-->
                <#--<label><input class="uk-checkbox" type="checkbox" name="${skill.name}" value="true"> ${skill.name}</label><br/>-->
            <#--</#list>-->
            <#--</p>-->
            <#--<div class="flex uk-margin"><input class="uk-button uk-button-primary" type="submit" value="SUBMIT"><div>-->
        <#--</form>-->
    <#--</div>-->
</div>
</body>
</html>