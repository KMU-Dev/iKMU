.class Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalLeScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    .line 520
    invoke-static {p1, p2, p3}, Lcom/estimote/sdk/Utils;->beaconFromLeScan(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/estimote/sdk/Beacon;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 521
    invoke-static {p2}, Lcom/estimote/sdk/utils/EstimoteBeacons;->isEstimoteBeacon(Lcom/estimote/sdk/Beacon;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {p1}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 522
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an Estimote beacon"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    return-void
.end method
