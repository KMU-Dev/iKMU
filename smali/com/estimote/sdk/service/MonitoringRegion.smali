.class Lcom/estimote/sdk/service/MonitoringRegion;
.super Lcom/estimote/sdk/service/RangingRegion;
.source "MonitoringRegion.java"


# static fields
.field private static final NOT_SEEN:I = -0x1


# instance fields
.field private lastSeenTimeMillis:J

.field private wasInside:Z


# direct methods
.method public constructor <init>(Lcom/estimote/sdk/Region;Landroid/os/Messenger;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/service/RangingRegion;-><init>(Lcom/estimote/sdk/Region;Landroid/os/Messenger;)V

    const-wide/16 p1, -0x1

    .line 26
    iput-wide p1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->lastSeenTimeMillis:J

    return-void
.end method


# virtual methods
.method public didJustExit(J)Z
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/estimote/sdk/service/MonitoringRegion;->wasInside:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/estimote/sdk/service/MonitoringRegion;->isInside(J)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    .line 69
    iput-wide p1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->lastSeenTimeMillis:J

    .line 70
    iput-boolean v1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->wasInside:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public isInside(J)Z
    .locals 5

    .line 55
    iget-wide v0, p0, Lcom/estimote/sdk/service/MonitoringRegion;->lastSeenTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/estimote/sdk/service/MonitoringRegion;->lastSeenTimeMillis:J

    sub-long/2addr p1, v0

    sget-wide v0, Lcom/estimote/sdk/service/BeaconService;->EXPIRATION_MILLIS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public markAsSeen(J)Z
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->lastSeenTimeMillis:J

    .line 43
    iget-boolean p1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->wasInside:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/estimote/sdk/service/MonitoringRegion;->wasInside:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
