.class Ltw/edu/kmu/act/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WebActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WebActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WebActivity;)V
    .locals 0

    .line 203
    iput-object p1, p0, Ltw/edu/kmu/act/WebActivity$3;->this$0:Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 206
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity$3;->this$0:Ltw/edu/kmu/act/WebActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/WebActivity;->access$300(Ltw/edu/kmu/act/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity$3;->this$0:Ltw/edu/kmu/act/WebActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/WebActivity;->access$300(Ltw/edu/kmu/act/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
