.class public abstract Lorg/mixare/lib/marker/PluginMarker;
.super Ljava/lang/Object;
.source "PluginMarker.java"


# instance fields
.field private ID:Ljava/lang/String;

.field private URL:Ljava/lang/String;

.field private active:Z

.field public cMarker:Lorg/mixare/lib/render/MixVector;

.field private colour:I

.field protected distance:D

.field protected isVisible:Z

.field protected locationVector:Lorg/mixare/lib/render/MixVector;

.field protected mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

.field private origin:Lorg/mixare/lib/render/MixVector;

.field protected signMarker:Lorg/mixare/lib/render/MixVector;

.field protected textBlock:Lorg/mixare/lib/gui/TextObj;

.field protected title:Ljava/lang/String;

.field public txtLab:Lorg/mixare/lib/gui/Label;

.field protected underline:Z

.field private upV:Lorg/mixare/lib/render/MixVector;


# direct methods
.method public constructor <init>(ILjava/lang/String;DDDLjava/lang/String;II)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v0, Lorg/mixare/lib/marker/PluginMarker;->underline:Z

    .line 56
    new-instance v2, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v2}, Lorg/mixare/lib/render/MixVector;-><init>()V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->cMarker:Lorg/mixare/lib/render/MixVector;

    .line 57
    new-instance v2, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v2}, Lorg/mixare/lib/render/MixVector;-><init>()V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->signMarker:Lorg/mixare/lib/render/MixVector;

    .line 59
    new-instance v2, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v2}, Lorg/mixare/lib/render/MixVector;-><init>()V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->locationVector:Lorg/mixare/lib/render/MixVector;

    .line 60
    new-instance v2, Lorg/mixare/lib/render/MixVector;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->origin:Lorg/mixare/lib/render/MixVector;

    .line 61
    new-instance v2, Lorg/mixare/lib/render/MixVector;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v3}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->upV:Lorg/mixare/lib/render/MixVector;

    .line 62
    new-instance v2, Lorg/mixare/lib/gui/Label;

    invoke-direct {v2}, Lorg/mixare/lib/gui/Label;-><init>()V

    iput-object v2, v0, Lorg/mixare/lib/marker/PluginMarker;->txtLab:Lorg/mixare/lib/gui/Label;

    const/4 v2, 0x1

    .line 68
    iput-boolean v2, v0, Lorg/mixare/lib/marker/PluginMarker;->active:Z

    .line 69
    iput-object v1, v0, Lorg/mixare/lib/marker/PluginMarker;->title:Ljava/lang/String;

    .line 70
    new-instance v10, Lorg/mixare/lib/reality/PhysicalPlace;

    move-object v3, v10

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lorg/mixare/lib/reality/PhysicalPlace;-><init>(DDD)V

    iput-object v10, v0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    if-eqz p9, :cond_0

    .line 71
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "webpage:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p9 .. p9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/mixare/lib/marker/PluginMarker;->URL:Ljava/lang/String;

    .line 73
    iput-boolean v2, v0, Lorg/mixare/lib/marker/PluginMarker;->underline:Z

    :cond_0
    move/from16 v2, p11

    .line 75
    iput v2, v0, Lorg/mixare/lib/marker/PluginMarker;->colour:I

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mixare/lib/marker/PluginMarker;->ID:Ljava/lang/String;

    return-void
.end method

.method private cCMarker(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/Camera;FF)V
    .locals 2

    .line 179
    new-instance v0, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v0, p1}, Lorg/mixare/lib/render/MixVector;-><init>(Lorg/mixare/lib/render/MixVector;)V

    .line 180
    new-instance p1, Lorg/mixare/lib/render/MixVector;

    iget-object v1, p0, Lorg/mixare/lib/marker/PluginMarker;->upV:Lorg/mixare/lib/render/MixVector;

    invoke-direct {p1, v1}, Lorg/mixare/lib/render/MixVector;-><init>(Lorg/mixare/lib/render/MixVector;)V

    .line 181
    iget-object v1, p0, Lorg/mixare/lib/marker/PluginMarker;->locationVector:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0, v1}, Lorg/mixare/lib/render/MixVector;->add(Lorg/mixare/lib/render/MixVector;)V

    .line 182
    iget-object v1, p0, Lorg/mixare/lib/marker/PluginMarker;->locationVector:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, v1}, Lorg/mixare/lib/render/MixVector;->add(Lorg/mixare/lib/render/MixVector;)V

    .line 183
    iget-object v1, p2, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0, v1}, Lorg/mixare/lib/render/MixVector;->sub(Lorg/mixare/lib/render/MixVector;)V

    .line 184
    iget-object v1, p2, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, v1}, Lorg/mixare/lib/render/MixVector;->sub(Lorg/mixare/lib/render/MixVector;)V

    .line 185
    iget-object v1, p2, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    invoke-virtual {v0, v1}, Lorg/mixare/lib/render/MixVector;->prod(Lorg/mixare/lib/render/Matrix;)V

    .line 186
    iget-object v1, p2, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    invoke-virtual {p1, v1}, Lorg/mixare/lib/render/MixVector;->prod(Lorg/mixare/lib/render/Matrix;)V

    .line 188
    new-instance v1, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v1}, Lorg/mixare/lib/render/MixVector;-><init>()V

    .line 189
    invoke-virtual {p2, v0, v1, p3, p4}, Lorg/mixare/lib/render/Camera;->projectPoint(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;FF)V

    .line 190
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->cMarker:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0, v1}, Lorg/mixare/lib/render/MixVector;->set(Lorg/mixare/lib/render/MixVector;)V

    .line 191
    invoke-virtual {p2, p1, v1, p3, p4}, Lorg/mixare/lib/render/Camera;->projectPoint(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;FF)V

    .line 192
    iget-object p1, p0, Lorg/mixare/lib/marker/PluginMarker;->signMarker:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, v1}, Lorg/mixare/lib/render/MixVector;->set(Lorg/mixare/lib/render/MixVector;)V

    return-void
.end method

.method private calcV(Lorg/mixare/lib/render/Camera;)V
    .locals 2

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lorg/mixare/lib/marker/PluginMarker;->isVisible:Z

    .line 198
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->cMarker:Lorg/mixare/lib/render/MixVector;

    iget v0, v0, Lorg/mixare/lib/render/MixVector;->z:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 199
    iput-boolean p1, p0, Lorg/mixare/lib/marker/PluginMarker;->isVisible:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public calcPaint(Lorg/mixare/lib/render/Camera;FF)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->origin:Lorg/mixare/lib/render/MixVector;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mixare/lib/marker/PluginMarker;->cCMarker(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/Camera;FF)V

    .line 174
    invoke-direct {p0, p1}, Lorg/mixare/lib/marker/PluginMarker;->calcV(Lorg/mixare/lib/render/Camera;)V

    return-void
.end method

.method public fClick()Lorg/mixare/lib/marker/draw/ClickHandler;
    .locals 7

    .line 134
    new-instance v6, Lorg/mixare/lib/marker/draw/ClickHandler;

    iget-object v1, p0, Lorg/mixare/lib/marker/PluginMarker;->URL:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/mixare/lib/marker/PluginMarker;->active:Z

    iget-object v3, p0, Lorg/mixare/lib/marker/PluginMarker;->txtLab:Lorg/mixare/lib/gui/Label;

    iget-object v4, p0, Lorg/mixare/lib/marker/PluginMarker;->signMarker:Lorg/mixare/lib/render/MixVector;

    iget-object v5, p0, Lorg/mixare/lib/marker/PluginMarker;->cMarker:Lorg/mixare/lib/render/MixVector;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/mixare/lib/marker/draw/ClickHandler;-><init>(Ljava/lang/String;ZLorg/mixare/lib/gui/Label;Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V

    return-object v6
.end method

.method public getAltitude()D
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-virtual {v0}, Lorg/mixare/lib/reality/PhysicalPlace;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCMarker()Lorg/mixare/lib/render/MixVector;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->cMarker:Lorg/mixare/lib/render/MixVector;

    return-object v0
.end method

.method public getColour()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/mixare/lib/marker/PluginMarker;->colour:I

    return v0
.end method

.method public getDistance()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/mixare/lib/marker/PluginMarker;->distance:D

    return-wide v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-virtual {v0}, Lorg/mixare/lib/reality/PhysicalPlace;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationVector()Lorg/mixare/lib/render/MixVector;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->locationVector:Lorg/mixare/lib/render/MixVector;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-virtual {v0}, Lorg/mixare/lib/reality/PhysicalPlace;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMaxObjects()I
.end method

.method public getSignMarker()Lorg/mixare/lib/render/MixVector;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->signMarker:Lorg/mixare/lib/render/MixVector;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtLab()Lorg/mixare/lib/gui/Label;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->txtLab:Lorg/mixare/lib/gui/Label;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderline()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/mixare/lib/marker/PluginMarker;->underline:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/mixare/lib/marker/PluginMarker;->active:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/mixare/lib/marker/PluginMarker;->isVisible:Z

    return v0
.end method

.method public abstract remoteDraw()[Lorg/mixare/lib/marker/draw/DrawCommand;
.end method

.method public setActive(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/mixare/lib/marker/PluginMarker;->active:Z

    return-void
.end method

.method public setDistance(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/mixare/lib/marker/PluginMarker;->distance:D

    return-void
.end method

.method public setExtras(Ljava/lang/String;Lorg/mixare/lib/marker/draw/ParcelableProperty;)V
    .locals 0

    return-void
.end method

.method public setExtras(Ljava/lang/String;Lorg/mixare/lib/marker/draw/PrimitiveProperty;)V
    .locals 0

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/mixare/lib/marker/PluginMarker;->ID:Ljava/lang/String;

    return-void
.end method

.method public setTxtLab(Lorg/mixare/lib/gui/Label;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lorg/mixare/lib/marker/PluginMarker;->txtLab:Lorg/mixare/lib/gui/Label;

    return-void
.end method

.method public update(Landroid/location/Location;)V
    .locals 5

    .line 164
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-virtual {v0}, Lorg/mixare/lib/reality/PhysicalPlace;->getAltitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 165
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mixare/lib/reality/PhysicalPlace;->setAltitude(D)V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/mixare/lib/marker/PluginMarker;->mGeoLoc:Lorg/mixare/lib/reality/PhysicalPlace;

    iget-object v1, p0, Lorg/mixare/lib/marker/PluginMarker;->locationVector:Lorg/mixare/lib/render/MixVector;

    invoke-static {p1, v0, v1}, Lorg/mixare/lib/reality/PhysicalPlace;->convLocToVec(Landroid/location/Location;Lorg/mixare/lib/reality/PhysicalPlace;Lorg/mixare/lib/render/MixVector;)V

    return-void
.end method
