.class Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$replyTo:Landroid/os/Messenger;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/estimote/sdk/service/BeaconService$IncomingHandler;ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iput p2, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$what:I

    iput-object p3, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    iget v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$what:I

    packed-switch v0, :pswitch_data_0

    .line 502
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :pswitch_1
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-class v1, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 498
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "scanPeriod"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-static {v0, v1}, Lcom/estimote/sdk/service/BeaconService;->access$1602(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting background scan period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v1, v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$1600(Lcom/estimote/sdk/service/BeaconService;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-class v1, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 493
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "scanPeriod"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-static {v0, v1}, Lcom/estimote/sdk/service/BeaconService;->access$1502(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting foreground scan period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v1, v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$1500(Lcom/estimote/sdk/service/BeaconService;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/estimote/sdk/service/BeaconService;->access$1402(Lcom/estimote/sdk/service/BeaconService;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_0

    .line 485
    :pswitch_4
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v1, "regionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v1, v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-virtual {v1, v0}, Lcom/estimote/sdk/service/BeaconService;->stopMonitoring(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :pswitch_5
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-class v1, Lcom/estimote/sdk/Region;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 480
    new-instance v0, Lcom/estimote/sdk/service/MonitoringRegion;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "region"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/Region;

    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$replyTo:Landroid/os/Messenger;

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/service/MonitoringRegion;-><init>(Lcom/estimote/sdk/Region;Landroid/os/Messenger;)V

    .line 482
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v1, v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-virtual {v1, v0}, Lcom/estimote/sdk/service/BeaconService;->startMonitoring(Lcom/estimote/sdk/service/MonitoringRegion;)V

    goto :goto_0

    .line 476
    :pswitch_6
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "regionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estimote/sdk/service/BeaconService;->access$1300(Lcom/estimote/sdk/service/BeaconService;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :pswitch_7
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-class v1, Lcom/estimote/sdk/Region;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 472
    new-instance v0, Lcom/estimote/sdk/service/RangingRegion;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "region"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/Region;

    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->val$replyTo:Landroid/os/Messenger;

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/service/RangingRegion;-><init>(Lcom/estimote/sdk/Region;Landroid/os/Messenger;)V

    .line 473
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;->this$1:Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    iget-object v1, v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1, v0}, Lcom/estimote/sdk/service/BeaconService;->access$1200(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/RangingRegion;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
