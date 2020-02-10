.class Ltw/edu/kmu/act/NewsContentActivity$1$1;
.super Ljava/lang/Object;
.source "NewsContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsContentActivity$1;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/NewsContentActivity$1;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsContentActivity$1;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$1$1;->this$1:Ltw/edu/kmu/act/NewsContentActivity$1;

    iput-object p2, p0, Ltw/edu/kmu/act/NewsContentActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
