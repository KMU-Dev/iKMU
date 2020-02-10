.class Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;
.super Landroid/os/Handler;
.source "YoutubeListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/YoutubeListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/YoutubeListViewAdapter;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

    invoke-virtual {v0}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->notifyDataSetChanged()V

    .line 129
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 119
    monitor-exit p0

    throw p1
.end method
