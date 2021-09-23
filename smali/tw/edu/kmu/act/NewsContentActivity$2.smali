.class Ltw/edu/kmu/act/NewsContentActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "NewsContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsContentActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsContentActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsContentActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$2;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 141
    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 142
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/16 p1, 0x8

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 149
    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity$2;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/NewsContentActivity;->access$200(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 150
    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity$2;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/NewsContentActivity;->access$200(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/NewsContentActivity$2;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/NewsContentActivity;->access$200(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ne p2, v0, :cond_1

    .line 156
    iget-object p2, p0, Ltw/edu/kmu/act/NewsContentActivity$2;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/NewsContentActivity;->access$200(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
