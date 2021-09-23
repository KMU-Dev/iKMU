.class public Ltw/edu/kmu/ar/gui/ARLayout;
.super Landroid/view/View;
.source "ARLayout.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ARLayout"


# instance fields
.field volatile arViews:Ljava/util/Vector;

.field private ctx:Landroid/content/Context;

.field public curLocation:Landroid/location/Location;

.field public debug:Z

.field public direction:F

.field public inclination:D

.field private index:I

.field public kFilteringFactor:F

.field private lastLocation:Landroid/location/Location;

.field public locMan:Landroid/location/LocationManager;

.field private locationChanged:Z

.field public one:F

.field public rollingX:D

.field public rollingZ:D

.field private screenHeight:F

.field private screenWidth:F

.field public sensorMan:Landroid/hardware/SensorManager;

.field public three:F

.field public two:F

.field private final xAngleWidth:F

.field private final yAngleWidth:F

.field private yBaseUnit:I

.field private yUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42340000    # 45.0f

    .line 30
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->xAngleWidth:F

    const/high16 v0, 0x41980000    # 19.0f

    .line 31
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yAngleWidth:F

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenWidth:F

    .line 34
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenHeight:F

    .line 38
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    const v1, 0x41b33333    # 22.4f

    .line 44
    iput v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    .line 47
    iput-wide v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingZ:D

    const v1, 0x3d4ccccd    # 0.05f

    .line 48
    iput v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->kFilteringFactor:F

    .line 49
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->one:F

    .line 50
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->two:F

    .line 51
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->three:F

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    .line 53
    iput-boolean v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->debug:Z

    .line 56
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yBaseUnit:I

    .line 73
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yUnit:I

    .line 75
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->index:I

    .line 95
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->ctx:Landroid/content/Context;

    .line 97
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->ctx:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    .line 98
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p1, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 99
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p1, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 100
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->ctx:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locMan:Landroid/location/LocationManager;

    .line 102
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locMan:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    .line 103
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locMan:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method private calcXvalue(FFF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p3, p1

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/high16 p2, 0x43b40000    # 360.0f

    sub-float/2addr p2, p1

    add-float/2addr p2, p3

    goto :goto_0

    :cond_0
    sub-float p2, p3, p1

    goto :goto_0

    :cond_1
    sub-float p2, p3, p1

    :goto_0
    const/high16 p1, 0x42340000    # 45.0f

    div-float/2addr p2, p1

    .line 229
    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenWidth:F

    mul-float p2, p2, p1

    return p2
.end method

.method private calcYvalue(FFF)F
    .locals 0

    .line 236
    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->index:I

    add-int/lit8 p1, p1, 0x0

    iget p2, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yUnit:I

    mul-int p1, p1, p2

    iget p2, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yBaseUnit:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    return p1
.end method

.method private isVisibleY(FFF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private sortArViews()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addARView(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearARViews()V
    .locals 1

    .line 211
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 309
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->sensorMan:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 310
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public getScreenHeight()F
    .locals 1

    .line 86
    iget v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenHeight:F

    return v0
.end method

.method public getScreenWidth()F
    .locals 1

    .line 78
    iget v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenWidth:F

    return v0
.end method

.method public getyBaseUnit()I
    .locals 1

    .line 58
    iget v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yBaseUnit:I

    return v0
.end method

.method public getyUnit()I
    .locals 1

    .line 66
    iget v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yUnit:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 241
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 243
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->debug:Z

    if-eqz v1, :cond_0

    .line 245
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 246
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compass:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inclination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/ar/gui/ARMaker;

    .line 255
    invoke-virtual {v1, p1}, Ltw/edu/kmu/ar/gui/ARMaker;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 109
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    .line 110
    sput-object p1, Ltw/edu/kmu/ar/gui/ARMaker;->deviceLocation:Landroid/location/Location;

    .line 111
    iput-boolean v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    goto :goto_0

    .line 115
    :cond_1
    iput-boolean v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    .line 117
    :goto_0
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    .line 118
    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARLayout;->postInvalidate()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    .line 134
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 136
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    .line 137
    aget v1, v0, v4

    cmpl-float v6, v1, v5

    if-lez v6, :cond_0

    sub-float/2addr v1, v5

    .line 144
    :cond_0
    iput v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    .line 146
    iget v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 147
    iget v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    add-float/2addr v1, v5

    goto :goto_0

    .line 149
    :cond_1
    iget v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    .line 153
    :goto_0
    iget-boolean v6, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    if-eqz v6, :cond_2

    .line 154
    iget-wide v6, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    double-to-float v6, v6

    iget-object v7, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    invoke-virtual {p0, v1, v6, v7}, Ltw/edu/kmu/ar/gui/ARLayout;->updateLayouts(FFLandroid/location/Location;)V

    goto :goto_1

    .line 156
    :cond_2
    iget-wide v6, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    double-to-float v6, v6

    invoke-virtual {p0, v1, v6, v2}, Ltw/edu/kmu/ar/gui/ARLayout;->updateLayouts(FFLandroid/location/Location;)V

    .line 158
    :cond_3
    :goto_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x2

    .line 159
    aget p1, v0, p1

    iget v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->kFilteringFactor:F

    mul-float p1, p1, v1

    float-to-double v6, p1

    iget-wide v8, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingZ:D

    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->kFilteringFactor:F

    float-to-double v10, p1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v12, v10

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    iput-wide v6, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingZ:D

    .line 160
    aget p1, v0, v4

    iget v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->kFilteringFactor:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    iget-wide v6, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->kFilteringFactor:F

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v8

    mul-double v6, v6, v12

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    .line 162
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingZ:D

    const-wide/16 v6, 0x0

    cmpl-double p1, v0, v6

    if-eqz p1, :cond_4

    .line 163
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    iget-wide v8, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingZ:D

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    goto :goto_2

    .line 164
    :cond_4
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    cmpg-double p1, v0, v6

    if-gez p1, :cond_5

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 165
    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    goto :goto_2

    .line 166
    :cond_5
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->rollingX:D

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_6

    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 167
    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    .line 171
    :cond_6
    :goto_2
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v8

    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    .line 174
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_7

    .line 175
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    add-double/2addr v0, v8

    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    goto :goto_3

    .line 177
    :cond_7
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    sub-double/2addr v0, v8

    iput-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    .line 180
    :cond_8
    :goto_3
    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_9

    .line 181
    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    add-float/2addr p1, v5

    goto :goto_4

    .line 183
    :cond_9
    iget p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->direction:F

    .line 185
    :goto_4
    iget-boolean v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->locationChanged:Z

    if-eqz v0, :cond_a

    .line 186
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    double-to-float v0, v0

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->curLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, v0, v1}, Ltw/edu/kmu/ar/gui/ARLayout;->updateLayouts(FFLandroid/location/Location;)V

    goto :goto_5

    .line 188
    :cond_a
    iget-wide v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->inclination:D

    double-to-float v0, v0

    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/ar/gui/ARLayout;->updateLayouts(FFLandroid/location/Location;)V

    .line 190
    :goto_5
    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARLayout;->postInvalidate()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 317
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 318
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/ar/gui/ARMaker;

    .line 320
    iget-object v2, v1, Ltw/edu/kmu/ar/gui/ARMaker;->oval:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    sget-object v2, Ltw/edu/kmu/ar/gui/ARLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent view.name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/ARMaker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "title"

    .line 323
    iget-object v4, v1, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image"

    .line 324
    iget-object v4, v1, Ltw/edu/kmu/ar/gui/ARMaker;->image:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "description"

    .line 325
    iget-object v4, v1, Ltw/edu/kmu/ar/gui/ARMaker;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v3, v1, Ltw/edu/kmu/ar/gui/ARMaker;->poi:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 327
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    iget-object v5, v1, Ltw/edu/kmu/ar/gui/ARMaker;->poi:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 331
    :cond_2
    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARLayout;->invalidate()V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public removeARView(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScreenHeight(F)V
    .locals 0

    .line 90
    iput p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenHeight:F

    return-void
.end method

.method public setScreenWidth(F)V
    .locals 0

    .line 82
    iput p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->screenWidth:F

    return-void
.end method

.method public setyBaseUnit(I)V
    .locals 0

    .line 62
    iput p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yBaseUnit:I

    return-void
.end method

.method public setyUnit(I)V
    .locals 0

    .line 70
    iput p1, p0, Ltw/edu/kmu/ar/gui/ARLayout;->yUnit:I

    return-void
.end method

.method public updateLayouts(FFLandroid/location/Location;)V
    .locals 12

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x41b40000    # 22.5f

    sub-float v1, p1, v0

    add-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    add-float/2addr v1, v2

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    sub-float/2addr p1, v2

    :cond_1
    const/high16 v3, 0x41180000    # 9.5f

    add-float v4, p2, v3

    sub-float/2addr p2, v3

    .line 276
    iget-object v3, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 278
    iget-object v5, p0, Ltw/edu/kmu/ar/gui/ARLayout;->arViews:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x0

    .line 281
    iput v5, p0, Ltw/edu/kmu/ar/gui/ARLayout;->index:I

    .line 282
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 285
    :try_start_0
    iget v5, p0, Ltw/edu/kmu/ar/gui/ARLayout;->index:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Ltw/edu/kmu/ar/gui/ARLayout;->index:I

    .line 286
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltw/edu/kmu/ar/gui/ARMaker;

    if-eqz p3, :cond_4

    .line 287
    iget-object v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->location:Landroid/location/Location;

    if-eqz v7, :cond_4

    .line 288
    iget-object v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->location:Landroid/location/Location;

    invoke-virtual {p3, v7}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v7

    iput v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    .line 289
    iget v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    cmpg-float v7, v7, v0

    if-gez v7, :cond_3

    .line 290
    iget v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    add-float/2addr v7, v2

    iput v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    .line 291
    :cond_3
    invoke-virtual {p3}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 292
    iget-object v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    const/4 v11, 0x0

    sub-double/2addr v7, v9

    iget-object v9, v5, Ltw/edu/kmu/ar/gui/ARMaker;->location:Landroid/location/Location;

    invoke-virtual {p3, v9}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->inclination:F

    .line 296
    :cond_4
    iput-boolean v6, v5, Ltw/edu/kmu/ar/gui/ARMaker;->visible:Z

    .line 297
    iget v6, v5, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    invoke-direct {p0, v1, p1, v6}, Ltw/edu/kmu/ar/gui/ARLayout;->calcXvalue(FFF)F

    move-result v6

    float-to-int v6, v6

    iget v7, v5, Ltw/edu/kmu/ar/gui/ARMaker;->inclination:F

    invoke-direct {p0, p2, v4, v7}, Ltw/edu/kmu/ar/gui/ARLayout;->calcYvalue(FFF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Ltw/edu/kmu/ar/gui/ARMaker;->getBottom()I

    move-result v8

    invoke-virtual {v5}, Ltw/edu/kmu/ar/gui/ARMaker;->getRight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Ltw/edu/kmu/ar/gui/ARMaker;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 300
    sget-object v6, Ltw/edu/kmu/ar/gui/ARLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    return-void
.end method
