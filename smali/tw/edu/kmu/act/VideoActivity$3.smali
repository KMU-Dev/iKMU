.class Ltw/edu/kmu/act/VideoActivity$3;
.super Ljava/lang/Thread;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/VideoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/VideoActivity;

.field final synthetic val$vv:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/VideoActivity;Landroid/widget/VideoView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Ltw/edu/kmu/act/VideoActivity$3;->this$0:Ltw/edu/kmu/act/VideoActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/VideoActivity$3;->val$vv:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/VideoActivity$3;->val$vv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    .line 93
    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Ltw/edu/kmu/act/VideoActivity$3;->this$0:Ltw/edu/kmu/act/VideoActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/VideoActivity;->access$100(Ltw/edu/kmu/act/VideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
