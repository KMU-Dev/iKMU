.class public Ltw/edu/kmu/act/ENewsContentActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "ENewsContentActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ENewsContentActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private sbWeb:Ljava/lang/StringBuffer;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0095

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 19
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, ""

    .line 21
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsContentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->bundle:Landroid/os/Bundle;

    const p1, 0x7f0801d5

    .line 25
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xcc

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0801ea

    .line 30
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080210

    .line 34
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "enewsID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080259

    .line 38
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->wv:Landroid/webkit/WebView;

    .line 39
    iget-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->wv:Landroid/webkit/WebView;

    new-instance v0, Ltw/edu/kmu/view/KWebViewClient;

    invoke-direct {v0, p0}, Ltw/edu/kmu/view/KWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->sbWeb:Ljava/lang/StringBuffer;

    .line 47
    iget-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->sbWeb:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><table><tr><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "content"

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&gt;"

    const-string v3, ">"

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&amp;"

    const-string v3, "&"

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</td></tr><tr><td></td></tr></table></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    iget-object v1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->wv:Landroid/webkit/WebView;

    iget-object p1, p0, Ltw/edu/kmu/act/ENewsContentActivity;->sbWeb:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
