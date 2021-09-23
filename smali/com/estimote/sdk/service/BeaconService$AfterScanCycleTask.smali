.class Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterScanCycleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-void
.end method

.method private findEnteredRegions(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estimote/sdk/Beacon;

    invoke-direct {p0, v2}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->matchingMonitoredRegions(Lcom/estimote/sdk/Beacon;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 365
    iget-object v4, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v4}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estimote/sdk/service/MonitoringRegion;->processFoundBeacons(Ljava/util/Map;)V

    .line 366
    invoke-virtual {v3, p1, p2}, Lcom/estimote/sdk/service/MonitoringRegion;->markAsSeen(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findExitedRegions(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 396
    invoke-virtual {v2, p1, p2}, Lcom/estimote/sdk/service/MonitoringRegion;->didJustExit(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private invokeCallbacks(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;)V"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/RangingRegion;

    const/4 v3, 0x3

    .line 406
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "rangingResult"

    new-instance v5, Lcom/estimote/sdk/service/RangingResult;

    iget-object v6, v1, Lcom/estimote/sdk/service/RangingRegion;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v1}, Lcom/estimote/sdk/service/RangingRegion;->getSortedBeacons()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/estimote/sdk/service/RangingResult;-><init>(Lcom/estimote/sdk/Region;Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    iget-object v1, v1, Lcom/estimote/sdk/service/RangingRegion;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while delivering responses"

    .line 411
    invoke-static {v2, v1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 415
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "monitoringResult"

    new-instance v5, Lcom/estimote/sdk/service/MonitoringResult;

    iget-object v6, v0, Lcom/estimote/sdk/service/MonitoringRegion;->region:Lcom/estimote/sdk/Region;

    sget-object v7, Lcom/estimote/sdk/Region$State;->INSIDE:Lcom/estimote/sdk/Region$State;

    invoke-virtual {v0}, Lcom/estimote/sdk/service/MonitoringRegion;->getSortedBeacons()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/estimote/sdk/service/MonitoringResult;-><init>(Lcom/estimote/sdk/Region;Lcom/estimote/sdk/Region$State;Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    :try_start_1
    iget-object v0, v0, Lcom/estimote/sdk/service/MonitoringRegion;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Error while delivering responses"

    .line 421
    invoke-static {v1, v0}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 424
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 425
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "monitoringResult"

    new-instance v5, Lcom/estimote/sdk/service/MonitoringResult;

    iget-object v6, p2, Lcom/estimote/sdk/service/MonitoringRegion;->region:Lcom/estimote/sdk/Region;

    sget-object v7, Lcom/estimote/sdk/Region$State;->OUTSIDE:Lcom/estimote/sdk/Region$State;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/estimote/sdk/service/MonitoringResult;-><init>(Lcom/estimote/sdk/Region;Lcom/estimote/sdk/Region$State;Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 429
    :try_start_2
    iget-object p2, p2, Lcom/estimote/sdk/service/MonitoringRegion;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    const-string v0, "Error while delivering responses"

    .line 431
    invoke-static {v0, p2}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private matchingMonitoredRegions(Lcom/estimote/sdk/Beacon;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estimote/sdk/Beacon;",
            ")",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 377
    iget-object v3, v2, Lcom/estimote/sdk/service/MonitoringRegion;->region:Lcom/estimote/sdk/Region;

    invoke-static {p1, v3}, Lcom/estimote/sdk/Utils;->isBeaconInRegion(Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/Region;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private processRanging()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/RangingRegion;

    .line 357
    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estimote/sdk/service/RangingRegion;->processFoundBeacons(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNotSeenBeacons(J)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/RangingRegion;

    .line 386
    invoke-virtual {v1, p1, p2}, Lcom/estimote/sdk/service/RangingRegion;->removeNotSeenBeacons(J)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 389
    invoke-virtual {v1, p1, p2}, Lcom/estimote/sdk/service/MonitoringRegion;->removeNotSeenBeacons(J)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$600(Lcom/estimote/sdk/service/BeaconService;)V

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 440
    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/estimote/sdk/service/BeaconService;->access$700(Lcom/estimote/sdk/service/BeaconService;)V

    .line 441
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->processRanging()V

    .line 442
    invoke-direct {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->findEnteredRegions(J)Ljava/util/List;

    move-result-object v2

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->findExitedRegions(J)Ljava/util/List;

    move-result-object v3

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->removeNotSeenBeacons(J)V

    .line 445
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 446
    invoke-direct {p0, v2, v3}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->invokeCallbacks(Ljava/util/List;Ljava/util/List;)V

    .line 447
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$800(Lcom/estimote/sdk/service/BeaconService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 448
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$900(Lcom/estimote/sdk/service/BeaconService;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/estimote/sdk/service/BeaconService;->access$1000(Lcom/estimote/sdk/service/BeaconService;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/estimote/sdk/service/BeaconService;->access$800(Lcom/estimote/sdk/service/BeaconService;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/estimote/sdk/service/BeaconService;->access$1100(Lcom/estimote/sdk/service/BeaconService;Landroid/app/PendingIntent;J)V

    :goto_0
    return-void
.end method
