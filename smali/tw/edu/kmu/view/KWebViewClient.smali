.class public Ltw/edu/kmu/view/KWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "KWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KWebViewClient"


# instance fields
.field private activity:Landroid/app/Activity;

.field private host:Ljava/lang/String;

.field private pw:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private stuno:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Ltw/edu/kmu/view/KWebViewClient;->stuno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Ltw/edu/kmu/view/KWebViewClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/view/KWebViewClient;->stuno:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ltw/edu/kmu/view/KWebViewClient;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Ltw/edu/kmu/view/KWebViewClient;->pw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ltw/edu/kmu/view/KWebViewClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/view/KWebViewClient;->pw:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    instance-of v0, v0, Ltw/edu/kmu/act/HandleProgressbarInterface;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    check-cast v0, Ltw/edu/kmu/act/HandleProgressbarInterface;

    invoke-interface {v0}, Ltw/edu/kmu/act/HandleProgressbarInterface;->hideProgress()V

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 142
    iget-object p3, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    instance-of p3, p3, Ltw/edu/kmu/act/HandleProgressbarInterface;

    if-eqz p3, :cond_0

    .line 143
    iget-object p3, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    check-cast p3, Ltw/edu/kmu/act/HandleProgressbarInterface;

    invoke-interface {p3}, Ltw/edu/kmu/act/HandleProgressbarInterface;->showProgress()V

    :cond_0
    const-string p3, ".mp4"

    .line 145
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 146
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/VideoActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 148
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u932f\u8aa4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u78ba\u5b9a"

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    iput-object p3, p0, Ltw/edu/kmu/view/KWebViewClient;->host:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Ltw/edu/kmu/view/KWebViewClient;->realm:Ljava/lang/String;

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u9a57\u8b49\u8acb\u6c42"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9a57\u8b49\u4e2d\u7684Host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9a57\u8b49\u4e2d\u7684realm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 57
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p3, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0a008a

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 61
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltw/edu/kmu/view/KWebViewClient$2;

    invoke-direct {v1, p0, p3, p2}, Ltw/edu/kmu/view/KWebViewClient$2;-><init>(Ltw/edu/kmu/view/KWebViewClient;Landroid/widget/LinearLayout;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {p4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0c008d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ltw/edu/kmu/view/KWebViewClient$1;

    invoke-direct {p3, p0}, Ltw/edu/kmu/view/KWebViewClient$1;-><init>(Ltw/edu/kmu/view/KWebViewClient;)V

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string p1, "\u767b\u5165"

    const-string p2, "\u9032\u5165\u767b\u5165\u5340"

    .line 83
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "\u767b\u5165"

    const-string v1, "\u6c92\u6709\u91cd\u65b0\u767b\u5165"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 169
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "SSL\u932f\u8aa4"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "\u6191\u8b49\u4e0d\u53d7\u4fe1\u4efb\uff0c\u8acb\u554f\u662f\u5426\u9700\u8981\u7e7c\u7e8c?"

    .line 170
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "\u78ba\u5b9a"

    new-instance v0, Ltw/edu/kmu/view/KWebViewClient$4;

    invoke-direct {v0, p0, p2}, Ltw/edu/kmu/view/KWebViewClient$4;-><init>(Ltw/edu/kmu/view/KWebViewClient;Landroid/webkit/SslErrorHandler;)V

    .line 171
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "\u53d6\u6d88"

    new-instance v0, Ltw/edu/kmu/view/KWebViewClient$3;

    invoke-direct {v0, p0, p2}, Ltw/edu/kmu/view/KWebViewClient$3;-><init>(Ltw/edu/kmu/view/KWebViewClient;Landroid/webkit/SslErrorHandler;)V

    .line 178
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 97
    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    instance-of v0, v0, Ltw/edu/kmu/act/HandleProgressbarInterface;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltw/edu/kmu/view/KWebViewClient;->activity:Landroid/app/Activity;

    check-cast v0, Ltw/edu/kmu/act/HandleProgressbarInterface;

    invoke-interface {v0}, Ltw/edu/kmu/act/HandleProgressbarInterface;->showProgress()V

    :cond_0
    const-string v0, "URL\u8f38\u5165"

    .line 100
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".mp4"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 104
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    const/4 v3, 0x3

    .line 105
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 107
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 108
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 113
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return v1

    .line 126
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
