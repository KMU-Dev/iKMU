.class Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;
.super Ljava/lang/Object;
.source "TrafficBikeMapV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TrafficBikeMapV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V
    .locals 0

    .line 256
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 260
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$200(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$002(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$300(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    invoke-static {}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$300(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$500(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
