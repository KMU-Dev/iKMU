.class public final Lcom/estimote/sdk/service/ScanPeriodData;
.super Ljava/lang/Object;
.source "ScanPeriodData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/estimote/sdk/service/ScanPeriodData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final scanPeriodMillis:J

.field public final waitTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData$1;

    invoke-direct {v0}, Lcom/estimote/sdk/service/ScanPeriodData$1;-><init>()V

    sput-object v0, Lcom/estimote/sdk/service/ScanPeriodData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    .line 22
    iput-wide p3, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Lcom/estimote/sdk/service/ScanPeriodData;

    .line 32
    iget-wide v2, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    iget-wide v4, p1, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 33
    :cond_2
    iget-wide v2, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    iget-wide v4, p1, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 40
    iget-wide v0, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    iget-wide v2, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-wide v1, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    iget-wide v5, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 47
    invoke-static {p0}, Lcom/estimote/sdk/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scanPeriodMillis"

    iget-wide v2, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "waitTimeMillis"

    iget-wide v2, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
