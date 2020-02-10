.class public Ltw/edu/kmu/act/TrafficTabActivity;
.super Landroid/app/Activity;
.source "TrafficTabActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficTabActivity"


# instance fields
.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/TrafficTabActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->openTrafficInfo()V

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/TrafficTabActivity;)Landroid/widget/Button;
    .locals 0

    .line 21
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TrafficTabActivity;)Landroid/widget/Button;
    .locals 0

    .line 21
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/TrafficTabActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->openTrafficParkingInfo()V

    return-void
.end method

.method private initBtn()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080052

    .line 81
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn1:Landroid/widget/Button;

    .line 82
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn1:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v2, "Transportation"

    goto :goto_0

    :cond_0
    const-string v2, "\u4ea4\u901a\u8cc7\u8a0a"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn1:Landroid/widget/Button;

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 84
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn1:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/TrafficTabActivity$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TrafficTabActivity$1;-><init>(Ltw/edu/kmu/act/TrafficTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08005c

    .line 95
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn2:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const-string v2, "Parking Info"

    goto :goto_1

    :cond_1
    const-string v2, "\u505c\u8eca\u8cc7\u8a0a"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficTabActivity;->btn2:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/TrafficTabActivity$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TrafficTabActivity$2;-><init>(Ltw/edu/kmu/act/TrafficTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080040

    .line 108
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    const-string v0, "Map"

    goto :goto_2

    :cond_2
    const-string v0, "\u5730\u5716"

    .line 109
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v0, Ltw/edu/kmu/act/TrafficTabActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficTabActivity$3;-><init>(Ltw/edu/kmu/act/TrafficTabActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    const v0, 0x7f08024c

    .line 60
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    .line 61
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ltw/edu/kmu/view/KWebViewClient;

    invoke-direct {v1, p0}, Ltw/edu/kmu/view/KWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 64
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method private openTrafficInfo()V
    .locals 6

    const-string v2, "<html><body><font size=\"14\"><font size=\"14\"><font color=\"#ff0000\" size=\"14\"><strong>\u4ea4\u901a\u8cc7\u8a0a</strong><br /></font>\u25cf\u706b\u8eca\u9ad8\u96c4\u7ad9\u5f8c\u7ad9\u51fa\u53e3\u8ddd\u672c\u6821\u7d04\u5169\u516c\u91cc\uff0c\u8eca\u7a0b\u7d045\u5206\u9418<br />\u25cf\u5c0f\u6e2f\u6a5f\u5834\u8f49\u642d\u8a08\u7a0b\u8eca\u7d0430\u5206\u9418<br />\u25cf\u958b\u8eca\u6cbf\u4e2d\u5c71\u9ad8\u901f\u516c\u8def\u5357\u4e0b -\u4e0b\u300c\u9f0e\u91d1\u4ea4\u6d41\u9053\u300d\u65bc\u6c11\u65cf\u8def\u5de6\u8f49\uff0c\u518d\u65bc\u540c\u76df\u8def\u53f3\u8f49\uff0c\u5373\u9054\u672c\u6821 -\u4e0b\u300c\u4e5d\u5982\u4ea4\u6d41\u9053\u300d\u6cbf\u4e5d\u5982\u8def\u5f80\u706b\u8eca\u7ad9\u65b9\u5411\uff0c\u65bc\u81ea\u7531\u8def\u53f3\u8f49\uff0c\u9047\u540c\u76df\u8def\u53f3\u8f49\uff0c\u5373\u9054\u672c\u6821<br />\u25cf\u9ad8\u9435\u8eca\u7ad9\u8f49\u642d\u8a08\u7a0b\u8eca\u7d0417\u5206\u9418\uff0c\u6cbf\u5927\u4e2d\u8def\u65bc\u81ea\u7531\u8def\u53f3\u8f49\uff0c\u518d\u65bc\u540c\u76df\u8def\u5de6\u8f49\u5373\u9054\u672c\u6821 \u3002<br />\u25cf\u9ad8\u6377\u8eca\u7ad9\u8f49\u642d\u6377\u904b\u63a5\u99c1\u516c\u8eca\uff0c\u7531<font color=\"#000080\"><a href=\"http://www.krtco.com.tw/b-map/R12.html\" target=\"_blank\"><font color=\"#000080\">\u5f8c\u9a5b\u7ad9\u51fa\u5165\u53e32</font></a></font><font color=\"#dc143c\"><font color=\"#000000\">\u642d\u4e58</font><a href=\"http://www.krtco2.com/b-map/Red29.jpg\" target=\"_blank\"><font color=\"#dc143c\">\u7d0529</font></a></font><font color=\"#000000\">\u63a5\u99c1\u8eca\uff0c\u5373\u9054\u672c\u6821\u3002</font></font><br><iframe width=\"100%\" height=\"60%\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com.tw/maps?f=q&amp;source=s_q&amp;hl=zh-TW&amp;geocode=&amp;q=%E9%AB%98%E9%9B%84%E5%B8%82%E4%B8%89%E6%B0%91%E5%8D%80%E5%8D%81%E5%85%A8%E4%B8%80%E8%B7%AF100%E8%99%9F&amp;sll=22.645482,120.309799&amp;sspn=0.014833,0.019248&amp;brcurrent=3,0x346e051e1f1d35d7:0xe6d0eb950fb496a3,0,0x346e04bf6cb74463:0xd266fce264dae085&amp;ie=UTF8&amp;hq=&amp;hnear=807%E9%AB%98%E9%9B%84%E5%B8%82%E4%B8%89%E6%B0%91%E5%8D%80%E5%8D%81%E5%85%A8%E4%B8%80%E8%B7%AF100%E8%99%9F&amp;ll=22.645581,120.309799&amp;spn=0.014832,0.019248&amp;z=14&amp;output=embed\"></iframe></body></html>"

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openTrafficParkingInfo()V
    .locals 6

    const-string v2, "<html><body><font color=\"#ff0000\" size=\"14\"><strong><br />\u505c\u8eca\u8cc7\u8a0a<br /></strong></font><font size=\"20\">1.\u672c\u6821\u7b2c\u4e00\u3001\u7b2c\u4e8c\u4f86\u8cd3\u505c\u8eca\u5834:\u5728\u9644\u8a2d\u91ab\u9662\u5167\uff0c \u7531\u81ea\u7531\u8def\u9032\u5165\uff0c\u8cbb\u7528\u6bcf\u5c0f\u664230\u5143\u8a08(30\u5206\u9418\u5167\u4ee515 \u5143\u8a08,\u8d85\u904e30\u5206\u9418\u4ee530\u5143\u8a08)\uff0c\u7b2c\u4e00\u4f86\u8cd3\u505c\u8eca\u5834\u5730\u9762\u6709\u6a5f\u8eca\u505c\u8eca\u5834\uff0c\u8cbb\u7528\u6bcf\u6b2120\u5143\u8a08\u3002 <br />2.\u904b\u52d5\u5834\u5730\u4e0b\u505c\u8eca\u5834:\u5728\u6821\u5712\u5167\uff0c\u7531\u540c\u76df\u8def\u9032\u5165\uff0c\u9650\u672c\u6821\u6559\u8077\u54e1\u5de5\u751f\u505c\u653e\u6c7d\u3001\u6a5f\u8eca\u3002<br />3.\u548c\u5ddd\u505c\u8eca\u5834:\u7531\u5341\u5168\u4e00\u8def 94\u5df7\u9032\u5165\uff0c\u9650\u672c\u6821\u6559\u8077\u54e1\u5de5\u751f\u505c\u653e\u6c7d\u3001\u6a5f\u8eca\u3002<br />4.\u540c\u76df\u8def\u4e0a\u8def\u908a\u6536\u8cbb\u505c\u8eca\u683c\u3002 5.\u6709\u95dc\u5b78\u8853\u6d3b\u52d5\u7533\u8acb\u8eca\u8f1b\u505c\u653e\uff0c\u8acb\u6d3d\u672c\u6821\u505c\u8eca\u5834\u7ba1\u7406\u59d4\u54e1\u6703\u8fa6\u7406(\u96fb\u8a71:3121101-2188\u62166988)\u3002</font></p><p><font size=\"2\"><font color=\"#ff0000\" size=\"20\"><strong><a href=\"http://www2.kmu.edu.tw/ezcatfiles/a001/img/img/470/schoolmap.jpg\"><img alt=\"image\" width=\"100%\" src=\"http://www2.kmu.edu.tw/ezcatfiles/a001/img/img/470/schoolmap001.jpg\" border=\"0\" /></a></strong></font></font></p></body></html>"

    .line 140
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficTabActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    sget-object v0, Ltw/edu/kmu/act/TrafficTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x7

    .line 38
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficTabActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0a00e1

    .line 40
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TrafficTabActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const p1, 0x7f08022e

    .line 44
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->initWebView()V

    .line 49
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->initBtn()V

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficTabActivity;->openTrafficInfo()V

    .line 53
    sget-object p1, Ltw/edu/kmu/act/TrafficTabActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
