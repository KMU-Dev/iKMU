.class public Lorg/mixare/lib/marker/InitialMarkerData;
.super Ljava/lang/Object;
.source "InitialMarkerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/marker/InitialMarkerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private constr:[Ljava/lang/Object;

.field private extraParcelables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mixare/lib/marker/draw/ParcelableProperty;",
            ">;"
        }
    .end annotation
.end field

.field private extraPrimitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mixare/lib/marker/draw/PrimitiveProperty;",
            ">;"
        }
    .end annotation
.end field

.field private markerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lorg/mixare/lib/marker/InitialMarkerData$1;

    invoke-direct {v0}, Lorg/mixare/lib/marker/InitialMarkerData$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/marker/InitialMarkerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;DDDLjava/lang/String;II)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    const/16 v0, 0x8

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 57
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 58
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 59
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 60
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 61
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 p2, 0x5

    aput-object p9, p1, p2

    .line 62
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 63
    iget-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    .line 67
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/InitialMarkerData;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstr()[Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraParcelables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mixare/lib/marker/draw/ParcelableProperty;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraPrimitives()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mixare/lib/marker/draw/PrimitiveProperty;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    return-object v0
.end method

.method public getExtras(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMarkerName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->markerName:Ljava/lang/String;

    return-object v0
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->markerName:Ljava/lang/String;

    const/16 v0, 0x8

    .line 176
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 179
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 180
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 181
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 182
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 183
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 184
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    :goto_1
    if-lt v2, v3, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    :cond_1
    iget-object v3, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setExtras(Ljava/lang/String;D)V
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->DOUBLE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;F)V
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->FLOAT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;I)V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->INT:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;J)V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->LONG:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->STRING:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;Lorg/mixare/lib/marker/draw/ParcelableProperty;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;Z)V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->STRING:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/lang/String;[B)V
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    new-instance v1, Lorg/mixare/lib/marker/draw/PrimitiveProperty;

    sget-object v2, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->BYTE:Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;

    invoke-virtual {v2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty$primitive;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/mixare/lib/marker/draw/PrimitiveProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMarkerName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/mixare/lib/marker/InitialMarkerData;->markerName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 149
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->markerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 154
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 155
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 156
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x6

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->constr:[Ljava/lang/Object;

    const/4 v1, 0x7

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraParcelables:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/mixare/lib/marker/InitialMarkerData;->extraPrimitives:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
