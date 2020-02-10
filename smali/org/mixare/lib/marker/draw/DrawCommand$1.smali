.class Lorg/mixare/lib/marker/draw/DrawCommand$1;
.super Ljava/lang/Object;
.source "DrawCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mixare/lib/marker/draw/DrawCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/mixare/lib/marker/draw/DrawCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/draw/DrawCommand$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawCommand;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawCommand;
    .locals 0

    .line 105
    invoke-static {p1}, Lorg/mixare/lib/marker/draw/DrawCommand;->buildObject(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawCommand;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/draw/DrawCommand$1;->newArray(I)[Lorg/mixare/lib/marker/draw/DrawCommand;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/mixare/lib/marker/draw/DrawCommand;
    .locals 0

    .line 109
    new-array p1, p1, [Lorg/mixare/lib/marker/draw/DrawCommand;

    return-object p1
.end method
