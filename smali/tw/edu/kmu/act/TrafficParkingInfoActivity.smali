.class public Ltw/edu/kmu/act/TrafficParkingInfoActivity;
.super Landroid/app/Activity;
.source "TrafficParkingInfoActivity.java"

# interfaces
.implements Ltw/edu/kmu/act/HandleProgressbarInterface;


# instance fields
.field private progressbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .line 45
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a00f4

    .line 21
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->setContentView(I)V

    const p1, 0x7f08014f

    .line 23
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 24
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->getIntent()Landroid/content/Intent;

    const-string v2, "<html><body><font color=\"#ff0000\" size=\"14\"><strong><br />\u505c\u8eca\u8cc7\u8a0a<br /></strong></font><font size=\"20\">1.\u672c\u6821\u7b2c\u4e00\u3001\u7b2c\u4e8c\u4f86\u8cd3\u505c\u8eca\u5834:\u5728\u9644\u8a2d\u91ab\u9662\u5167\uff0c \u7531\u81ea\u7531\u8def\u9032\u5165\uff0c\u8cbb\u7528\u6bcf\u5c0f\u664230\u5143\u8a08(30\u5206\u9418\u5167\u4ee515 \u5143\u8a08,\u8d85\u904e30\u5206\u9418\u4ee530\u5143\u8a08)\uff0c\u7b2c\u4e00\u4f86\u8cd3\u505c\u8eca\u5834\u5730\u9762\u6709\u6a5f\u8eca\u505c\u8eca\u5834\uff0c\u8cbb\u7528\u6bcf\u6b2120\u5143\u8a08\u3002 <br />2.\u904b\u52d5\u5834\u5730\u4e0b\u505c\u8eca\u5834:\u5728\u6821\u5712\u5167\uff0c\u7531\u540c\u76df\u8def\u9032\u5165\uff0c\u9650\u672c\u6821\u6559\u8077\u54e1\u5de5\u751f\u505c\u653e\u6c7d\u3001\u6a5f\u8eca\u3002<br />3.\u548c\u5ddd\u505c\u8eca\u5834:\u7531\u5341\u5168\u4e00\u8def 94\u5df7\u9032\u5165\uff0c\u9650\u672c\u6821\u6559\u8077\u54e1\u5de5\u751f\u505c\u653e\u6c7d\u3001\u6a5f\u8eca\u3002<br />4.\u540c\u76df\u8def\u4e0a\u8def\u908a\u6536\u8cbb\u505c\u8eca\u683c\u3002 5.\u6709\u95dc\u5b78\u8853\u6d3b\u52d5\u7533\u8acb\u8eca\u8f1b\u505c\u653e\uff0c\u8acb\u6d3d\u672c\u6821\u505c\u8eca\u5834\u7ba1\u7406\u59d4\u54e1\u6703\u8fa6\u7406(\u96fb\u8a71:3121101-2188\u62166988)\u3002</font></p><p><font size=\"2\"><font color=\"#ff0000\" size=\"20\"><strong><a href=\"http://www2.kmu.edu.tw/ezcatfiles/a001/img/img/470/schoolmap.jpg\"><img alt=\"image\" width=\"100%\" src=\"http://www2.kmu.edu.tw/ezcatfiles/a001/img/img/470/schoolmap001.jpg\" border=\"0\" /></a></strong></font></font></p></body></html>"

    const p1, 0x7f08024c

    .line 27
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    .line 28
    new-instance p1, Ltw/edu/kmu/view/KWebViewClient;

    invoke-direct {p1, p0}, Ltw/edu/kmu/view/KWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 p1, 0x50

    .line 30
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 39
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficParkingInfoActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
