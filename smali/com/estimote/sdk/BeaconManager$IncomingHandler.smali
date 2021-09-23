.class Lcom/estimote/sdk/BeaconManager$IncomingHandler;
.super Landroid/os/Handler;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/BeaconManager;


# direct methods
.method private constructor <init>(Lcom/estimote/sdk/BeaconManager;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$1;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lcom/estimote/sdk/BeaconManager$IncomingHandler;-><init>(Lcom/estimote/sdk/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$300(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 495
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$300(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estimote/sdk/BeaconManager$ErrorListener;->onError(Ljava/lang/Integer;)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$1000(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/estimote/sdk/service/MonitoringResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 485
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "monitoringResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/service/MonitoringResult;

    .line 486
    iget-object v0, p1, Lcom/estimote/sdk/service/MonitoringResult;->state:Lcom/estimote/sdk/Region$State;

    sget-object v1, Lcom/estimote/sdk/Region$State;->INSIDE:Lcom/estimote/sdk/Region$State;

    if-ne v0, v1, :cond_2

    .line 487
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$1000(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    move-result-object v0

    iget-object v1, p1, Lcom/estimote/sdk/service/MonitoringResult;->region:Lcom/estimote/sdk/Region;

    iget-object p1, p1, Lcom/estimote/sdk/service/MonitoringResult;->beacons:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/estimote/sdk/BeaconManager$MonitoringListener;->onEnteredRegion(Lcom/estimote/sdk/Region;Ljava/util/List;)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$1000(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    move-result-object v0

    iget-object p1, p1, Lcom/estimote/sdk/service/MonitoringResult;->region:Lcom/estimote/sdk/Region;

    invoke-interface {v0, p1}, Lcom/estimote/sdk/BeaconManager$MonitoringListener;->onExitedRegion(Lcom/estimote/sdk/Region;)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$900(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$RangingListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/estimote/sdk/service/RangingResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 478
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "rangingResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/service/RangingResult;

    .line 479
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$IncomingHandler;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$900(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$RangingListener;

    move-result-object v0

    iget-object v1, p1, Lcom/estimote/sdk/service/RangingResult;->region:Lcom/estimote/sdk/Region;

    iget-object p1, p1, Lcom/estimote/sdk/service/RangingResult;->beacons:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/estimote/sdk/BeaconManager$RangingListener;->onBeaconsDiscovered(Lcom/estimote/sdk/Region;Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method
