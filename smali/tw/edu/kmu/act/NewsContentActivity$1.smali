.class Ltw/edu/kmu/act/NewsContentActivity$1;
.super Landroid/webkit/WebViewClient;
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

    .line 100
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$1;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 125
    invoke-static {}, Ltw/edu/kmu/act/NewsContentActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity$1;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsContentActivity;->access$100(Ltw/edu/kmu/act/NewsContentActivity;)V

    .line 127
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 104
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Ltw/edu/kmu/act/NewsContentActivity$1;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "Server SSL Certificate seems invalid. Do you want to continue"

    .line 105
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "Continue"

    .line 106
    new-instance v0, Ltw/edu/kmu/act/NewsContentActivity$1$1;

    invoke-direct {v0, p0, p2}, Ltw/edu/kmu/act/NewsContentActivity$1$1;-><init>(Ltw/edu/kmu/act/NewsContentActivity$1;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p3, "Cancel"

    .line 112
    new-instance v0, Ltw/edu/kmu/act/NewsContentActivity$1$2;

    invoke-direct {v0, p0, p2}, Ltw/edu/kmu/act/NewsContentActivity$1$2;-><init>(Ltw/edu/kmu/act/NewsContentActivity$1;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
