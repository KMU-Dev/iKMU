.class public interface abstract Lcom/estimote/sdk/BeaconManager$MonitoringListener;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MonitoringListener"
.end annotation


# virtual methods
.method public abstract onEnteredRegion(Lcom/estimote/sdk/Region;Ljava/util/List;)V
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

.method public abstract onExitedRegion(Lcom/estimote/sdk/Region;)V
.end method
