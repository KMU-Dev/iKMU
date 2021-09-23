.class public Ltw/edu/kmu/act/TrafficInfoActivity;
.super Landroid/app/Activity;
.source "TrafficInfoActivity.java"

# interfaces
.implements Ltw/edu/kmu/act/HandleProgressbarInterface;


# instance fields
.field private progressbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .line 49
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a00f6

    .line 22
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficInfoActivity;->setContentView(I)V

    const p1, 0x7f080159

    .line 23
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 24
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficInfoActivity;->getIntent()Landroid/content/Intent;

    const-string v2, "<html><body><font size=\"14\"><font size=\"14\"><font color=\"#ff0000\" size=\"14\"><strong>\u4ea4\u901a\u8cc7\u8a0a</strong><br /></font>\u25cf\u706b\u8eca\u9ad8\u96c4\u7ad9\u5f8c\u7ad9\u51fa\u53e3\u8ddd\u672c\u6821\u7d04\u5169\u516c\u91cc\uff0c\u8eca\u7a0b\u7d045\u5206\u9418<br />\u25cf\u5c0f\u6e2f\u6a5f\u5834\u8f49\u642d\u8a08\u7a0b\u8eca\u7d0430\u5206\u9418<br />\u25cf\u958b\u8eca\u6cbf\u4e2d\u5c71\u9ad8\u901f\u516c\u8def\u5357\u4e0b -\u4e0b\u300c\u9f0e\u91d1\u4ea4\u6d41\u9053\u300d\u65bc\u6c11\u65cf\u8def\u5de6\u8f49\uff0c\u518d\u65bc\u540c\u76df\u8def\u53f3\u8f49\uff0c\u5373\u9054\u672c\u6821 -\u4e0b\u300c\u4e5d\u5982\u4ea4\u6d41\u9053\u300d\u6cbf\u4e5d\u5982\u8def\u5f80\u706b\u8eca\u7ad9\u65b9\u5411\uff0c\u65bc\u81ea\u7531\u8def\u53f3\u8f49\uff0c\u9047\u540c\u76df\u8def\u53f3\u8f49\uff0c\u5373\u9054\u672c\u6821<br />\u25cf\u9ad8\u9435\u8eca\u7ad9\u8f49\u642d\u8a08\u7a0b\u8eca\u7d0417\u5206\u9418\uff0c\u6cbf\u5927\u4e2d\u8def\u65bc\u81ea\u7531\u8def\u53f3\u8f49\uff0c\u518d\u65bc\u540c\u76df\u8def\u5de6\u8f49\u5373\u9054\u672c\u6821 \u3002<br />\u25cf\u9ad8\u6377\u8eca\u7ad9\u8f49\u642d\u6377\u904b\u63a5\u99c1\u516c\u8eca\uff0c\u7531<font color=\"#000080\"><a href=\"http://www.krtco.com.tw/b-map/R12.html\" target=\"_blank\"><font color=\"#000080\">\u5f8c\u9a5b\u7ad9\u51fa\u5165\u53e32</font></a></font><font color=\"#dc143c\"><font color=\"#000000\">\u642d\u4e58</font><a href=\"http://www.krtco2.com/b-map/Red29.jpg\" target=\"_blank\"><font color=\"#dc143c\">\u7d0529</font></a></font><font color=\"#000000\">\u63a5\u99c1\u8eca\uff0c\u5373\u9054\u672c\u6821\u3002</font></font><br><iframe width=\"100%\" height=\"60%\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com.tw/maps?f=q&amp;source=s_q&amp;hl=zh-TW&amp;geocode=&amp;q=%E9%AB%98%E9%9B%84%E5%B8%82%E4%B8%89%E6%B0%91%E5%8D%80%E5%8D%81%E5%85%A8%E4%B8%80%E8%B7%AF100%E8%99%9F&amp;sll=22.645482,120.309799&amp;sspn=0.014833,0.019248&amp;brcurrent=3,0x346e051e1f1d35d7:0xe6d0eb950fb496a3,0,0x346e04bf6cb74463:0xd266fce264dae085&amp;ie=UTF8&amp;hq=&amp;hnear=807%E9%AB%98%E9%9B%84%E5%B8%82%E4%B8%89%E6%B0%91%E5%8D%80%E5%8D%81%E5%85%A8%E4%B8%80%E8%B7%AF100%E8%99%9F&amp;ll=22.645581,120.309799&amp;spn=0.014832,0.019248&amp;z=14&amp;output=embed\"></iframe></body></html>"

    const p1, 0x7f080259

    .line 29
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    .line 30
    new-instance p1, Ltw/edu/kmu/view/KWebViewClient;

    invoke-direct {p1, p0}, Ltw/edu/kmu/view/KWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 p1, 0x50

    .line 36
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 43
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
