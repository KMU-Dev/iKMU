.class final Lcom/estimote/sdk/service/RangingResult$1;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/estimote/sdk/service/RangingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/RangingResult;
    .locals 2

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/Region;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/estimote/sdk/service/RangingResult;

    invoke-direct {v0, v1, p1}, Lcom/estimote/sdk/service/RangingResult;-><init>(Lcom/estimote/sdk/Region;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/RangingResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/estimote/sdk/service/RangingResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/estimote/sdk/service/RangingResult;
    .locals 0

    .line 77
    new-array p1, p1, [Lcom/estimote/sdk/service/RangingResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/estimote/sdk/service/RangingResult$1;->newArray(I)[Lcom/estimote/sdk/service/RangingResult;

    move-result-object p1

    return-object p1
.end method
