.class final Lcom/estimote/sdk/service/RangingRegion$1;
.super Ljava/lang/Object;
.source "RangingRegion.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/RangingRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/estimote/sdk/Beacon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/Beacon;)I
    .locals 2

    .line 29
    invoke-static {p1}, Lcom/estimote/sdk/Utils;->computeAccuracy(Lcom/estimote/sdk/Beacon;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/estimote/sdk/Utils;->computeAccuracy(Lcom/estimote/sdk/Beacon;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/estimote/sdk/Beacon;

    check-cast p2, Lcom/estimote/sdk/Beacon;

    invoke-virtual {p0, p1, p2}, Lcom/estimote/sdk/service/RangingRegion$1;->compare(Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/Beacon;)I

    move-result p1

    return p1
.end method
