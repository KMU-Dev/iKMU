.class Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;
.super Ljava/lang/Object;
.source "IRSTAReplyDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 118
    new-instance p1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;)V

    const/4 v0, 0x1

    .line 119
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
