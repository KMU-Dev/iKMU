.class Ltw/edu/kmu/view/KWebViewClient$4;
.super Ljava/lang/Object;
.source "KWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/view/KWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/KWebViewClient;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/KWebViewClient;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 171
    iput-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$4;->this$0:Ltw/edu/kmu/view/KWebViewClient;

    iput-object p2, p0, Ltw/edu/kmu/view/KWebViewClient$4;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 175
    iget-object p1, p0, Ltw/edu/kmu/view/KWebViewClient$4;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
