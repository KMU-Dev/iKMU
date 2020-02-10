.class Ltw/com/chte/south/act/VideoActivity$4;
.super Ljava/lang/Thread;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/chte/south/act/VideoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/chte/south/act/VideoActivity;

.field private final synthetic val$vv:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Ltw/com/chte/south/act/VideoActivity;Landroid/widget/VideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/chte/south/act/VideoActivity$4;->this$0:Ltw/com/chte/south/act/VideoActivity;

    iput-object p2, p0, Ltw/com/chte/south/act/VideoActivity$4;->val$vv:Landroid/widget/VideoView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    :cond_0
    iget-object v0, p0, Ltw/com/chte/south/act/VideoActivity$4;->val$vv:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    .line 93
    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Ltw/com/chte/south/act/VideoActivity$4;->this$0:Ltw/com/chte/south/act/VideoActivity;

    invoke-static {v1}, Ltw/com/chte/south/act/VideoActivity;->access$1(Ltw/com/chte/south/act/VideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
