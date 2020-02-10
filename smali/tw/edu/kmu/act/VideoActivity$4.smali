.class Ltw/edu/kmu/act/VideoActivity$4;
.super Landroid/os/Handler;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/VideoActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/VideoActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ltw/edu/kmu/act/VideoActivity$4;->this$0:Ltw/edu/kmu/act/VideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/VideoActivity$4;->this$0:Ltw/edu/kmu/act/VideoActivity;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
