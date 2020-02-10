.class public Lorg/mixare/lib/marker/draw/DrawArrow;
.super Lorg/mixare/lib/marker/draw/DrawCommand;
.source "DrawArrow.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String; = "org.mixare.lib.marker.draw.DrawArrow"

.field private static PROPERTY_NAME_CMARKER:Ljava/lang/String; = "cMarker"

.field private static PROPERTY_NAME_SIGNMARKER:Ljava/lang/String; = "signMarker"

.field private static PROPERTY_NAME_VISIBLE:Ljava/lang/String; = "visible"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V
    .locals 1

    .line 50
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawArrow;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mixare/lib/marker/draw/DrawCommand;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mixare/lib/marker/draw/DrawArrow;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_CMARKER:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/marker/draw/DrawArrow;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lorg/mixare/lib/marker/draw/DrawArrow;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private buildArrow(FF)Landroid/graphics/Path;
    .locals 4

    .line 79
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p2, v0

    const/4 v1, 0x0

    sub-float v2, v1, v0

    add-float v3, p2, v1

    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v0, v1

    .line 83
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p2, v1, p2

    .line 86
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-object p1
.end method

.method public static init(Landroid/os/Parcel;)Lorg/mixare/lib/marker/draw/DrawArrow;
    .locals 3

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 44
    const-class v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 45
    const-class v2, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lorg/mixare/lib/marker/draw/ParcelableProperty;

    .line 46
    new-instance v2, Lorg/mixare/lib/marker/draw/DrawArrow;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p0}, Lorg/mixare/lib/marker/draw/ParcelableProperty;->getObject()Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v2, v0, v1, p0}, Lorg/mixare/lib/marker/draw/DrawArrow;-><init>(ZLorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V

    return-object v2
.end method


# virtual methods
.method public draw(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 12

    .line 61
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_VISIBLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawArrow;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_CMARKER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mixare/lib/marker/draw/DrawArrow;->getMixVectorProperty(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v0

    .line 63
    sget-object v1, Lorg/mixare/lib/marker/draw/DrawArrow;->PROPERTY_NAME_SIGNMARKER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/mixare/lib/marker/draw/DrawArrow;->getMixVectorProperty(Ljava/lang/String;)Lorg/mixare/lib/render/MixVector;

    move-result-object v1

    .line 65
    iget v2, v0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v3, v0, Lorg/mixare/lib/render/MixVector;->y:F

    iget v4, v1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, v1, Lorg/mixare/lib/render/MixVector;->y:F

    invoke-static {v2, v3, v4, v1}, Lorg/mixare/lib/MixUtils;->getAngle(FFFF)F

    move-result v1

    .line 66
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float v3, v2, v3

    .line 68
    invoke-virtual {p1, v3}, Lorg/mixare/lib/gui/PaintScreen;->setStrokeWidth(F)V

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1, v3}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v3, v2, v3

    .line 73
    invoke-direct {p0, v2, v3}, Lorg/mixare/lib/marker/draw/DrawArrow;->buildArrow(FF)Landroid/graphics/Path;

    move-result-object v5

    .line 74
    iget v6, v0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v7, v0, Lorg/mixare/lib/render/MixVector;->y:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v9, v3, v0

    const/high16 v0, 0x42b40000    # 90.0f

    add-float v10, v1, v0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v4, p1

    move v8, v9

    invoke-virtual/range {v4 .. v11}, Lorg/mixare/lib/gui/PaintScreen;->paintPath(Landroid/graphics/Path;FFFFFF)V

    :cond_0
    return-void
.end method
