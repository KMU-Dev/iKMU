.class public Ltw/edu/kmu/act/NewsContentActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "NewsContentActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewsContentActivity"


# instance fields
.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field btnBack:Landroid/widget/Button;

.field btnClose:Landroid/widget/Button;

.field btnForward:Landroid/widget/Button;

.field btnReload:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateTime:Ljava/lang/String;

.field private isInDB:Z

.field private progressbar:Landroid/widget/ProgressBar;

.field private sbWeb:Ljava/lang/StringBuffer;

.field private serialNo:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->isInDB:Z

    const-string v0, ""

    .line 47
    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->serialNo:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->dateTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/NewsContentActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsContentActivity;->setBtnStatus()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/NewsContentActivity;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/NewsContentActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ltw/edu/kmu/act/NewsContentActivity;->isInDB:Z

    return p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/NewsContentActivity;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->isInDB:Z

    return p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/Button;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/NewsContentActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/NewsContentActivity;->serialNo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initBtn()V
    .locals 3

    .line 195
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->serialNo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->checkNewsBySerialNo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->isInDB:Z

    const v0, 0x7f08003f

    .line 197
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    .line 198
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 199
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 200
    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-boolean v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->isInDB:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$3;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    const v0, 0x7f080259

    .line 98
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    .line 99
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsContentActivity;->initWebViewBtn()V

    .line 100
    new-instance v0, Ltw/edu/kmu/act/NewsContentActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/NewsContentActivity$1;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    .line 132
    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$2;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 166
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 167
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 168
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 169
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 170
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 171
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 172
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 173
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 175
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 176
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 186
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initWebViewBtn()V
    .locals 2

    const v0, 0x7f080087

    .line 237
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnClose:Landroid/widget/Button;

    .line 238
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnClose:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$4;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080086

    .line 246
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnBack:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnBack:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$5;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080088

    .line 256
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnForward:Landroid/widget/Button;

    .line 258
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnForward:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$6;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$6;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080089

    .line 266
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnReload:Landroid/widget/Button;

    .line 267
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnReload:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsContentActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsContentActivity$7;-><init>(Ltw/edu/kmu/act/NewsContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBtnStatus()V
    .locals 2

    .line 276
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnBack:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701a2

    goto :goto_0

    :cond_0
    const v1, 0x7f0701a3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 277
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->btnForward:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity;->webView:Landroid/webkit/WebView;

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
.method public checkNewsBySerialNo(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .line 282
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNewsBySerialNo start and serialNo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "NewData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    sget-object v1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 292
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 293
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 295
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "serialNo"

    .line 296
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    sget-object p1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    const-string v0, "serialNo is exist in NewData"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNewsBySerialNo Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    sget-object p1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    const-string v0, "checkNewsBySerialNo end "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0095

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080159

    .line 56
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string p1, ""

    .line 59
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsContentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    .line 63
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "dataMap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->dataMap:Ljava/util/HashMap;

    .line 65
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serialno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serialNo"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serialno"

    goto :goto_0

    :goto_1
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity;->serialNo:Ljava/lang/String;

    const p1, 0x7f0801d5

    .line 67
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0xcc

    .line 69
    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0801ea

    .line 71
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "2"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "4"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    const-string v0, "\u6559\u52d9\u516c\u544a"

    goto :goto_4

    :cond_4
    :goto_2
    const-string v0, "\u5b78\u52d9\u516c\u544a"

    goto :goto_4

    :cond_5
    :goto_3
    const-string v0, "\u6821\u5712\u516c\u544a"

    .line 81
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080210

    .line 83
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "dateTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "datetime"

    :goto_5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "dateTime"

    goto :goto_5

    :goto_6
    iput-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->dateTime:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->dateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsContentActivity;->initWebView()V

    .line 92
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsContentActivity;->initBtn()V

    return-void
.end method

.method public removeNewsDataBySerialNo(Ljava/lang/String;)V
    .locals 5

    .line 315
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNewsDataBySerialNo start and SerialNo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "NewData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    sget-object v1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNewsDataBySerialNo result is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 325
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 326
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 327
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 328
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 329
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "serialNo"

    .line 330
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "items"

    .line 336
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NewData"

    .line 338
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 346
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNewsDataById Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    :goto_1
    sget-object p1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    const-string v0, "removeNewsDataById end "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveNewsData()V
    .locals 4

    .line 357
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    const-string v1, "saveNewsData start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "NewData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 366
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 367
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 368
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Ltw/edu/kmu/act/NewsContentActivity;->dataMap:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 369
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 370
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "NewData"

    .line 371
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 379
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Ltw/edu/kmu/act/NewsContentActivity;->dataMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 380
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 382
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "items"

    .line 383
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "NewData"

    .line 385
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    sget-object v1, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveNewsData Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/NewsContentActivity;->TAG:Ljava/lang/String;

    const-string v1, "saveNewsData end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
