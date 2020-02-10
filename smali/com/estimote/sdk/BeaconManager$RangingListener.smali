.class public interface abstract Lcom/estimote/sdk/BeaconManager$RangingListener;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RangingListener"
.end annotation


# virtual methods
.method public abstract onBeaconsDiscovered(Lcom/estimote/sdk/Region;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estimote/sdk/Region;",
            "Ljava/util/List<",
            "Lcom/estimote/sdk/Beacon;",
            ">;)V"
        }
    .end annotation
.end method
