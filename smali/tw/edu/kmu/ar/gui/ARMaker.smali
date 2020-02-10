.class public Ltw/edu/kmu/ar/gui/ARMaker;
.super Landroid/view/View;
.source "ARMaker.java"


# static fields
.field public static currentAltitude:F

.field public static deviceLocation:Landroid/location/Location;


# instance fields
.field public volatile azimuth:F

.field public bm:Landroid/graphics/Bitmap;

.field public checkins:I

.field private context:Landroid/content/Context;

.field public description:Ljava/lang/String;

.field public volatile distance:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public volatile inclination:F

.field public volatile location:Landroid/location/Location;

.field public name:Ljava/lang/String;

.field public volatile oval:Landroid/graphics/RectF;

.field protected p:Landroid/graphics/Paint;

.field public poi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile unit:Ljava/lang/String;

.field public volatile visible:Z

.field public volatile x:I

.field public volatile y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 31
    iput v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->inclination:F

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->visible:Z

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/ar/gui/ARMaker;->bm:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 58
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v2, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x78

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getLeft()I

    move-result v6

    iget-object v7, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getTop()I

    move-result v7

    iget-object v8, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v8, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->oval:Landroid/graphics/RectF;

    .line 66
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->oval:Landroid/graphics/RectF;

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0xd

    div-int/lit8 v4, v4, 0x78

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x8

    if-le v0, v4, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    .line 78
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getLeft()I

    move-result v2

    iget-object v4, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getTop()I

    move-result v4

    iget-object v5, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0x78

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARMaker;->distance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/ar/gui/ARMaker;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getLeft()I

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v2, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/ar/gui/ARMaker;->getTop()I

    move-result v2

    iget-object v3, p0, Ltw/edu/kmu/ar/gui/ARMaker;->context:Landroid/content/Context;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v3, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Ltw/edu/kmu/ar/gui/ARMaker;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
