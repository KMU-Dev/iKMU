.class final Lcom/estimote/sdk/service/ScanPeriodData$1;
.super Ljava/lang/Object;
.source "ScanPeriodData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/ScanPeriodData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/estimote/sdk/service/ScanPeriodData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 4

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 60
    new-instance p1, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/ScanPeriodData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 65
    new-array p1, p1, [Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/ScanPeriodData$1;->newArray(I)[Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object p1

    return-object p1
.end method
