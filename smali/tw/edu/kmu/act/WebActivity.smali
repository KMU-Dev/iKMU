.class public Ltw/edu/kmu/act/WebActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WebActivity.java"

# interfaces
.implements Ltw/edu/kmu/act/HandleProgressbarInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebActivity"


# instance fields
.field btnBack:Landroid/widget/Button;

.field btnClose:Landroid/widget/Button;

.field btnForward:Landroid/widget/Button;

.field btnReload:Landroid/widget/Button;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private myClient:Landroid/webkit/WebViewClient;

.field private progressbar:Landroid/widget/ProgressBar;

.field private scale:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Ltw/edu/kmu/act/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/WebActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/WebActivity;->setBtnStatus()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/WebActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/WebActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f080087

    .line 192
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnClose:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnClose:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WebActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WebActivity$2;-><init>(Ltw/edu/kmu/act/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080086

    .line 201
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnBack:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WebActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WebActivity$3;-><init>(Ltw/edu/kmu/act/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080088

    .line 211
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnForward:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnForward:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WebActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WebActivity$4;-><init>(Ltw/edu/kmu/act/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080089

    .line 221
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnReload:Landroid/widget/Button;

    .line 222
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnReload:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WebActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WebActivity$5;-><init>(Ltw/edu/kmu/act/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBtnStatus()V
    .locals 2

    .line 231
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnBack:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701a2

    goto :goto_0

    :cond_0
    const v1, 0x7f0701a3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 232
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->btnForward:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0701a4

    goto :goto_1

    :cond_1
    const v1, 0x7f0701a5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected getFunctionButtonId()I
    .locals 1

    const v0, 0x7f08003f

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 239
    iget-boolean v0, p0, Ltw/edu/kmu/act/WebActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00f7

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00f8

    :goto_0
    return v0
.end method

.method protected getTitleId()I
    .locals 1

    const v0, 0x7f08023b

    return v0
.end method

.method public hideProgress()V
    .locals 2

    .line 276
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Ltw/edu/kmu/act/WebActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/WebActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 41
    invoke-virtual {p0}, Ltw/edu/kmu/act/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->url:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->title:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->scale:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f080159

    .line 49
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->progressbar:Landroid/widget/ProgressBar;

    const v0, 0x7f080259

    .line 50
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    .line 52
    invoke-direct {p0}, Ltw/edu/kmu/act/WebActivity;->initViews()V

    .line 54
    new-instance v0, Ltw/edu/kmu/act/WebActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/WebActivity$1;-><init>(Ltw/edu/kmu/act/WebActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/WebActivity;->myClient:Landroid/webkit/WebViewClient;

    .line 142
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 146
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 151
    iget-object v2, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Ltw/edu/kmu/act/WebActivity;->myClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fillWidth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 161
    :cond_1
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->scale:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Ltw/edu/kmu/act/WebActivity;->scale:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setInitialScale(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 168
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "loadData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, ""

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "text/html; charset=UTF-8"

    const-string v2, "base64"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "Cookies 1"

    .line 181
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 254
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 258
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 262
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return p1

    .line 265
    :cond_1
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public showProgress()V
    .locals 2

    .line 270
    iget-object v0, p0, Ltw/edu/kmu/act/WebActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
