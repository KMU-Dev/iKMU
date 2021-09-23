.class public Ltw/edu/kmu/facade/LocationFacade;
.super Ljava/lang/Object;
.source "LocationFacade.java"


# static fields
.field public static final ANGLE_TYPE_DEG:I = 0x1

.field public static final ANGLE_TYPE_RAD:I = 0x0

.field private static final EARTH_RAD_KM:D = 6371.009

.field private static final HALF_PI:D = 1.5707963267948966

.field private static instance:Ltw/edu/kmu/facade/LocationFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltw/edu/kmu/facade/LocationFacade;
    .locals 1

    .line 23
    sget-object v0, Ltw/edu/kmu/facade/LocationFacade;->instance:Ltw/edu/kmu/facade/LocationFacade;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ltw/edu/kmu/facade/LocationFacade;

    invoke-direct {v0}, Ltw/edu/kmu/facade/LocationFacade;-><init>()V

    sput-object v0, Ltw/edu/kmu/facade/LocationFacade;->instance:Ltw/edu/kmu/facade/LocationFacade;

    .line 26
    :cond_0
    sget-object v0, Ltw/edu/kmu/facade/LocationFacade;->instance:Ltw/edu/kmu/facade/LocationFacade;

    return-object v0
.end method


# virtual methods
.method public getAngleOfTwoLocation(DDDDI)D
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    .line 69
    invoke-virtual/range {v0 .. v10}, Ltw/edu/kmu/facade/LocationFacade;->getAngleOfTwoLocation(DDDDILjava/util/Map;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAngleOfTwoLocation(DDDDILjava/util/Map;)D
    .locals 13

    move-object/from16 v0, p10

    .line 87
    invoke-virtual/range {p0 .. p8}, Ltw/edu/kmu/facade/LocationFacade;->getDistanceKM(DDDD)D

    move-result-wide v1

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p3

    .line 89
    invoke-virtual/range {v3 .. v11}, Ltw/edu/kmu/facade/LocationFacade;->getDistanceKM(DDDD)D

    move-result-wide v3

    div-double/2addr v3, v1

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    sub-double v5, p7, p3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-ltz v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    sub-double v11, p5, p1

    cmpl-double v6, v11, v9

    if-ltz v6, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    sub-double v3, v11, v3

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    if-nez v5, :cond_4

    add-double/2addr v3, v11

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    if-nez v5, :cond_5

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v3, v5, v3

    goto :goto_1

    :cond_5
    move-wide v3, v9

    :goto_1
    if-eqz v0, :cond_6

    const-string v5, "distance"

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    packed-switch p9, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4e0d\u662f\u5408\u6cd5\u7684type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDistanceKM(DDDD)D
    .locals 4

    sub-double v0, p5, p1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 50
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const-wide/high16 p7, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p7

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double p1, p1, p5

    div-double/2addr p3, p7

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    mul-double p1, p1, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double p1, p1, p7

    const-wide p3, 0x40b8e3024dd2f1aaL    # 6371.009

    mul-double p1, p1, p3

    return-wide p1
.end method

.method public getDistanceKM(Landroid/location/Location;Landroid/location/Location;)D
    .locals 9

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ltw/edu/kmu/facade/LocationFacade;->getDistanceKM(DDDD)D

    move-result-wide p1

    return-wide p1
.end method
