.class Ltw/edu/kmu/act/BusInfoListActivity$2;
.super Ljava/lang/Object;
.source "BusInfoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/BusInfoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/BusInfoListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BusInfoListActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 254
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$800(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$702(Ltw/edu/kmu/act/BusInfoListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 256
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    invoke-static {}, Ltw/edu/kmu/act/BusInfoListActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity$2;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$600(Ltw/edu/kmu/act/BusInfoListActivity;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
