.class public Ltw/edu/kmu/ar/gui/AugmentedView;
.super Landroid/view/View;
.source "AugmentedView.java"


# static fields
.field public static final DEFAULT_VIEW_ANGLE:F


# instance fields
.field private allPoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private angle:F

.field context:Landroid/content/Context;

.field private dWindow:Lorg/mixare/lib/gui/PaintScreen;

.field private lrl:Lorg/mixare/lib/gui/ScreenLine;

.field private radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

.field private rrl:Lorg/mixare/lib/gui/ScreenLine;

.field private rx:F

.field private ry:F

.field searchObjHeight:I

.field searchObjWidth:I

.field xSearch:I

.field ySearch:I

.field zoomPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Ltw/edu/kmu/ar/gui/AugmentedView;->DEFAULT_VIEW_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    .line 19
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->xSearch:I

    const/16 v0, 0xa

    .line 20
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ySearch:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->searchObjWidth:I

    .line 22
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->searchObjHeight:I

    .line 28
    new-instance v0, Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-direct {v0}, Ltw/edu/kmu/ar/gui/RadarPoints;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    .line 29
    new-instance v0, Lorg/mixare/lib/gui/ScreenLine;

    invoke-direct {v0}, Lorg/mixare/lib/gui/ScreenLine;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    .line 30
    new-instance v0, Lorg/mixare/lib/gui/ScreenLine;

    invoke-direct {v0}, Lorg/mixare/lib/gui/ScreenLine;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    const/high16 v0, 0x41200000    # 10.0f

    .line 31
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->angle:F

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->zoomPaint:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->context:Landroid/content/Context;

    return-void
.end method

.method private drawRadar(Lorg/mixare/lib/gui/PaintScreen;F)V
    .locals 6

    .line 85
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/mixare/lib/gui/ScreenLine;->set(FF)V

    .line 86
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    sget v1, Ltw/edu/kmu/ar/gui/AugmentedView;->DEFAULT_VIEW_ANGLE:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/mixare/lib/gui/ScreenLine;->rotate(F)V

    .line 87
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    iget v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v4}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v4

    add-float/2addr v1, v4

    iget v4, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    iget-object v5, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v5}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Lorg/mixare/lib/gui/ScreenLine;->add(FF)V

    .line 88
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/mixare/lib/gui/ScreenLine;->set(FF)V

    .line 89
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    sget v1, Ltw/edu/kmu/ar/gui/AugmentedView;->DEFAULT_VIEW_ANGLE:F

    neg-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/mixare/lib/gui/ScreenLine;->rotate(F)V

    .line 90
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    iget v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v2}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v4}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/mixare/lib/gui/ScreenLine;->add(FF)V

    .line 92
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v2}, Ltw/edu/kmu/ar/gui/RadarPoints;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v4}, Ltw/edu/kmu/ar/gui/RadarPoints;->getHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    neg-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 95
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 96
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v0}, Ltw/edu/kmu/ar/gui/RadarPoints;->getWidth()F

    move-result v0

    div-float/2addr v0, v3

    neg-float v0, v0

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/RadarPoints;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget-object p2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->allPoiList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ltw/edu/kmu/ar/gui/RadarPoints;->setAllPoiList(Ljava/util/List;)V

    .line 98
    iget-object p2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->context:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Ltw/edu/kmu/ar/gui/RadarPoints;->setRadius(F)V

    .line 99
    iget-object p2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/ar/gui/RadarPoints;->paint(Lorg/mixare/lib/gui/PaintScreen;)V

    .line 100
    invoke-virtual {p1}, Lorg/mixare/lib/gui/PaintScreen;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    const/4 p2, 0x0

    .line 102
    invoke-virtual {p1, p2}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    const/16 v0, 0x96

    const/16 v1, 0xdc

    .line 103
    invoke-static {v0, p2, p2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 108
    iget-object p2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    iget p2, p2, Lorg/mixare/lib/gui/ScreenLine;->x:F

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->lrl:Lorg/mixare/lib/gui/ScreenLine;

    iget v0, v0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    iget v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v2}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    iget-object v3, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v3}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->paintLine(FFFF)V

    .line 109
    iget-object p2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    iget p2, p2, Lorg/mixare/lib/gui/ScreenLine;->x:F

    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rrl:Lorg/mixare/lib/gui/ScreenLine;

    iget v0, v0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    iget v1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v2}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    iget-object v3, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->radarPoints:Ltw/edu/kmu/ar/gui/RadarPoints;

    invoke-virtual {v3}, Ltw/edu/kmu/ar/gui/RadarPoints;->getRadius()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->paintLine(FFFF)V

    const/16 p2, 0xff

    .line 111
    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 112
    invoke-virtual {p1, p2}, Lorg/mixare/lib/gui/PaintScreen;->setFontSize(F)V

    return-void
.end method


# virtual methods
.method public getAllPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->allPoiList:Ljava/util/List;

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .line 38
    iget v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->angle:F

    return v0
.end method

.method public getRx()F
    .locals 1

    .line 117
    iget v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    return v0
.end method

.method public getRy()F
    .locals 1

    .line 125
    iget v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    return v0
.end method

.method public getdWindow()Lorg/mixare/lib/gui/PaintScreen;
    .locals 1

    .line 53
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mixare/lib/gui/PaintScreen;->setWidth(I)V

    .line 65
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mixare/lib/gui/PaintScreen;->setHeight(I)V

    .line 66
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    invoke-virtual {v0, p1}, Lorg/mixare/lib/gui/PaintScreen;->setCanvas(Landroid/graphics/Canvas;)V

    .line 68
    iget-object p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    iget v0, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->angle:F

    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/ar/gui/AugmentedView;->drawRadar(Lorg/mixare/lib/gui/PaintScreen;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAllPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->allPoiList:Ljava/util/List;

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 42
    iput p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->angle:F

    return-void
.end method

.method public setRx(F)V
    .locals 0

    .line 121
    iput p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->rx:F

    return-void
.end method

.method public setRy(F)V
    .locals 0

    .line 129
    iput p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->ry:F

    return-void
.end method

.method public setdWindow(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 0

    .line 57
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/AugmentedView;->dWindow:Lorg/mixare/lib/gui/PaintScreen;

    return-void
.end method
