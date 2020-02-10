.class Ltw/edu/kmu/act/YoutubeActivity$2;
.super Landroid/os/Handler;
.source "YoutubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/YoutubeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/YoutubeActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/YoutubeActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Ltw/edu/kmu/act/YoutubeActivity$2;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity$2;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/YoutubeActivity;->access$300(Ltw/edu/kmu/act/YoutubeActivity;)V

    .line 107
    iget-object v0, p0, Ltw/edu/kmu/act/YoutubeActivity$2;->this$0:Ltw/edu/kmu/act/YoutubeActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/YoutubeActivity;->access$400(Ltw/edu/kmu/act/YoutubeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
