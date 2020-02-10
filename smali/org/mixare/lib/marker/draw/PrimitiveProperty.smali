.class public Lorg/mixare/lib/marker/draw/PrimitiveProperty;
.super Ljava/lang/Object;
.source "PrimitiveProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/marker/draw/PrimitiveProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private object:Ljava/lang/Object;

.field private primitivename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$1;

    invoke-direct {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->STRING:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    goto/16 :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->INT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->DOUBLE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->FLOAT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->LONG:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->BYTE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 89
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->STRING:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->INT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->DOUBLE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->FLOAT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 100
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->LONG:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 103
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 105
    :cond_4
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->primitivename:Ljava/lang/String;

    sget-object v0, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->BYTE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v0}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 106
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/PrimitiveProperty;->object:Ljava/lang/Object;

    check-cast p2, [B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_5
    :goto_0
    return-void
.end method
