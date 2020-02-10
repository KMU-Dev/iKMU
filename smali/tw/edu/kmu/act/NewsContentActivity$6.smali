.class Ltw/edu/kmu/act/NewsContentActivity$6;
.super Ljava/lang/Object;
.source "NewsContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsContentActivity;->initWebViewBtn()V
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

    .line 258
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$6;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 261
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$6;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$600(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$6;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$600(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method
