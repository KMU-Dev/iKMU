.class public Lorg/mixare/lib/reality/PhysicalPlace;
.super Ljava/lang/Object;
.source "PhysicalPlace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/reality/PhysicalPlace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field altitude:D

.field latitude:D

.field longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/mixare/lib/reality/PhysicalPlace$1;

    invoke-direct {v0}, Lorg/mixare/lib/reality/PhysicalPlace$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/reality/PhysicalPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual/range {p0 .. p6}, Lorg/mixare/lib/reality/PhysicalPlace;->setTo(DDD)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/mixare/lib/reality/PhysicalPlace;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/mixare/lib/reality/PhysicalPlace;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-wide v1, p1, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    iget-wide v3, p1, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    iget-wide v5, p1, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/mixare/lib/reality/PhysicalPlace;->setTo(DDD)V

    return-void
.end method

.method public static calcDestination(DDDDLorg/mixare/lib/reality/PhysicalPlace;)V
    .locals 6

    .line 113
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 118
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x41584dae00000000L    # 6371000.0

    div-double/2addr p6, v2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 121
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p4, p4, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double p4, p4, v2

    .line 122
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p0, p0, v2

    sub-double/2addr p6, p0

    .line 121
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-virtual {p8, p0, p1}, Lorg/mixare/lib/reality/PhysicalPlace;->setLatitude(D)V

    .line 125
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-virtual {p8, p0, p1}, Lorg/mixare/lib/reality/PhysicalPlace;->setLongitude(D)V

    return-void
.end method

.method public static convLocToVec(Landroid/location/Location;Lorg/mixare/lib/reality/PhysicalPlace;Lorg/mixare/lib/render/MixVector;)V
    .locals 21

    const/4 v0, 0x1

    .line 129
    new-array v10, v0, [F

    const/4 v11, 0x0

    const/4 v1, 0x0

    aput v1, v10, v11

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 132
    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/reality/PhysicalPlace;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v9, v10

    .line 131
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 133
    new-array v0, v0, [F

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/reality/PhysicalPlace;->getLongitude()D

    move-result-wide v18

    move-object/from16 v20, v0

    .line 134
    invoke-static/range {v12 .. v20}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/reality/PhysicalPlace;->getAltitude()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/reality/PhysicalPlace;->getLatitude()D

    move-result-wide v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-double v8, v3, v5

    if-gez v8, :cond_0

    .line 138
    aget v3, v10, v11

    mul-float v3, v3, v7

    aput v3, v10, v11

    .line 139
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/mixare/lib/reality/PhysicalPlace;->getLongitude()D

    move-result-wide v5

    cmpl-double v8, v3, v5

    if-lez v8, :cond_1

    .line 140
    aget v3, v0, v11

    mul-float v3, v3, v7

    aput v3, v0, v11

    .line 142
    :cond_1
    aget v0, v0, v11

    double-to-float v1, v1

    aget v2, v10, v11

    move-object/from16 v3, p2

    invoke-virtual {v3, v0, v1, v2}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    return-void
.end method

.method public static convertVecToLoc(Lorg/mixare/lib/render/MixVector;Landroid/location/Location;Landroid/location/Location;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 147
    iget v2, v0, Lorg/mixare/lib/render/MixVector;->z:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    move-wide v10, v4

    .line 149
    iget v2, v0, Lorg/mixare/lib/render/MixVector;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const-wide v2, 0x4070e00000000000L    # 270.0

    goto :goto_1

    :cond_1
    const-wide v2, 0x4056800000000000L    # 90.0

    :goto_1
    move-wide/from16 v16, v2

    .line 152
    new-instance v2, Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-direct {v2}, Lorg/mixare/lib/reality/PhysicalPlace;-><init>()V

    .line 153
    new-instance v3, Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-direct {v3}, Lorg/mixare/lib/reality/PhysicalPlace;-><init>()V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 155
    iget v4, v0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v12, v4

    move-object v14, v2

    .line 154
    invoke-static/range {v6 .. v14}, Lorg/mixare/lib/reality/PhysicalPlace;->calcDestination(DDDDLorg/mixare/lib/reality/PhysicalPlace;)V

    .line 156
    invoke-virtual {v2}, Lorg/mixare/lib/reality/PhysicalPlace;->getLatitude()D

    move-result-wide v12

    .line 157
    invoke-virtual {v2}, Lorg/mixare/lib/reality/PhysicalPlace;->getLongitude()D

    move-result-wide v14

    iget v2, v0, Lorg/mixare/lib/render/MixVector;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, v2

    move-wide/from16 v18, v4

    move-object/from16 v20, v3

    .line 156
    invoke-static/range {v12 .. v20}, Lorg/mixare/lib/reality/PhysicalPlace;->calcDestination(DDDDLorg/mixare/lib/reality/PhysicalPlace;)V

    .line 159
    invoke-virtual {v3}, Lorg/mixare/lib/reality/PhysicalPlace;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 160
    invoke-virtual {v3}, Lorg/mixare/lib/reality/PhysicalPlace;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iget v0, v0, Lorg/mixare/lib/render/MixVector;->y:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    return-wide v0
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    return-void
.end method

.method public setTo(DDD)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    .line 69
    iput-wide p3, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    .line 70
    iput-wide p5, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    return-void
.end method

.method public setTo(Lorg/mixare/lib/reality/PhysicalPlace;)V
    .locals 2

    .line 74
    iget-wide v0, p1, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    .line 75
    iget-wide v0, p1, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    .line 76
    iget-wide v0, p1, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    iput-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 171
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 172
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 173
    iget-wide v0, p0, Lorg/mixare/lib/reality/PhysicalPlace;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
