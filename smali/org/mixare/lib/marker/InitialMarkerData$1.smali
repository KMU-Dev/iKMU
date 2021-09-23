.class Lorg/mixare/lib/marker/InitialMarkerData$1;
.super Ljava/lang/Object;
.source "InitialMarkerData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mixare/lib/marker/InitialMarkerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mixare/lib/marker/InitialMarkerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/InitialMarkerData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mixare/lib/marker/InitialMarkerData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mixare/lib/marker/InitialMarkerData;
    .locals 1

    .line 80
    new-instance v0, Lorg/mixare/lib/marker/InitialMarkerData;

    invoke-direct {v0, p1}, Lorg/mixare/lib/marker/InitialMarkerData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/InitialMarkerData$1;->newArray(I)[Lorg/mixare/lib/marker/InitialMarkerData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mixare/lib/marker/InitialMarkerData;
    .locals 0

    .line 84
    new-array p1, p1, [Lorg/mixare/lib/marker/InitialMarkerData;

    return-object p1
.end method
