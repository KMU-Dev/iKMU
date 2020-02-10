.class final Lcom/estimote/sdk/service/MonitoringResult$1;
.super Ljava/lang/Object;
.source "MonitoringResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/MonitoringResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/estimote/sdk/service/MonitoringResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/MonitoringResult;
    .locals 4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/Region;

    .line 72
    invoke-static {}, Lcom/estimote/sdk/Region$State;->values()[Lcom/estimote/sdk/Region$State;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/estimote/sdk/service/MonitoringResult;

    invoke-direct {v0, v1, v2, p1}, Lcom/estimote/sdk/service/MonitoringResult;-><init>(Lcom/estimote/sdk/Region;Lcom/estimote/sdk/Region$State;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/MonitoringResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/MonitoringResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/estimote/sdk/service/MonitoringResult;
    .locals 0

    .line 79
    new-array p1, p1, [Lcom/estimote/sdk/service/MonitoringResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/MonitoringResult$1;->newArray(I)[Lcom/estimote/sdk/service/MonitoringResult;

    move-result-object p1

    return-object p1
.end method
