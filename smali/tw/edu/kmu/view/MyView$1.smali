.class Ltw/edu/kmu/view/MyView$1;
.super Landroid/os/Handler;
.source "MyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/view/MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/view/MyView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/view/MyView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltw/edu/kmu/view/MyView$1;->this$0:Ltw/edu/kmu/view/MyView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "\u53d6\u5f97Msg"

    .line 36
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x101

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Ltw/edu/kmu/view/MyView$1;->this$0:Ltw/edu/kmu/view/MyView;

    invoke-static {p1}, Ltw/edu/kmu/view/MyView;->access$000(Ltw/edu/kmu/view/MyView;)V

    .line 39
    iget-object p1, p0, Ltw/edu/kmu/view/MyView$1;->this$0:Ltw/edu/kmu/view/MyView;

    invoke-virtual {p1}, Ltw/edu/kmu/view/MyView;->invalidate()V

    :cond_0
    return-void
.end method
