.class Ltw/edu/kmu/act/WebActivity$5;
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

    .line 222
    iput-object p1, p0, Ltw/edu/kmu/act/WebActivity$5;->this$0:Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p1, p0, Ltw/edu/kmu/act/WebActivity$5;->this$0:Ltw/edu/kmu/act/WebActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/WebActivity;->access$300(Ltw/edu/kmu/act/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
