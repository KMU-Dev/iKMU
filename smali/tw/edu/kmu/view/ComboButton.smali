.class public Ltw/edu/kmu/view/ComboButton;
.super Landroid/widget/Button;
.source "ComboButton.java"


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private displayHeight:I

.field private displayWidth:I

.field private iconFileName:Ljava/lang/String;

.field private iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isIconShown:Z

.field private mCamera:Landroid/graphics/Camera;

.field private newX:I

.field private newY:I

.field private oldX:I

.field private oldY:I

.field private paint:Landroid/graphics/Paint;

.field private paintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private tPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/view/ComboButton;->paint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Ltw/edu/kmu/view/ComboButton;->paintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 38
    iput v1, p0, Ltw/edu/kmu/view/ComboButton;->oldX:I

    .line 39
    iput v1, p0, Ltw/edu/kmu/view/ComboButton;->oldY:I

    .line 40
    iput v1, p0, Ltw/edu/kmu/view/ComboButton;->newX:I

    .line 41
    iput v1, p0, Ltw/edu/kmu/view/ComboButton;->newY:I

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ComboButton;->setClickable(Z)V

    .line 50
    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->context:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 52
    iget-object p1, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Landroid/graphics/Camera;

    invoke-direct {p2}, Landroid/graphics/Camera;-><init>()V

    iput-object p2, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    .line 30
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Ltw/edu/kmu/view/ComboButton;->paint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Ltw/edu/kmu/view/ComboButton;->paintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 38
    iput v0, p0, Ltw/edu/kmu/view/ComboButton;->oldX:I

    .line 39
    iput v0, p0, Ltw/edu/kmu/view/ComboButton;->oldY:I

    .line 40
    iput v0, p0, Ltw/edu/kmu/view/ComboButton;->newX:I

    .line 41
    iput v0, p0, Ltw/edu/kmu/view/ComboButton;->newY:I

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p0, p2}, Ltw/edu/kmu/view/ComboButton;->setClickable(Z)V

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->context:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 60
    iget-object p1, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 1

    .line 184
    iget v0, p0, Ltw/edu/kmu/view/ComboButton;->displayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .line 176
    iget v0, p0, Ltw/edu/kmu/view/ComboButton;->displayWidth:I

    return v0
.end method

.method public getIconFileName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->iconFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->iconMap:Ljava/util/Map;

    return-object v0
.end method

.method public getOldX()I
    .locals 1

    .line 130
    iget v0, p0, Ltw/edu/kmu/view/ComboButton;->oldX:I

    return v0
.end method

.method public getOldY()I
    .locals 1

    .line 138
    iget v0, p0, Ltw/edu/kmu/view/ComboButton;->oldY:I

    return v0
.end method

.method public isIconShown()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Ltw/edu/kmu/view/ComboButton;->isIconShown:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 74
    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->paintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 75
    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 76
    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    iget v2, p0, Ltw/edu/kmu/view/ComboButton;->displayWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 78
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v1, v1, v2

    .line 80
    iget-object v2, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 81
    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 82
    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 84
    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 85
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->bgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    iget-boolean v0, p0, Ltw/edu/kmu/view/ComboButton;->isIconShown:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->iconFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->iconMap:Ljava/util/Map;

    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->iconFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 95
    iput-object v0, p0, Ltw/edu/kmu/view/ComboButton;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ComboButton;->setIconShown(Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 104
    iget-object v1, p0, Ltw/edu/kmu/view/ComboButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/view/ComboButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 106
    iget-object v2, p0, Ltw/edu/kmu/view/ComboButton;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Ltw/edu/kmu/view/ComboButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Ltw/edu/kmu/view/ComboButton;->tPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v7, v1, -0x1e

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 112
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Ltw/edu/kmu/view/ComboButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->bgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDisplayHeight(I)V
    .locals 0

    .line 188
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->displayHeight:I

    return-void
.end method

.method public setDisplayWidth(I)V
    .locals 0

    .line 180
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->displayWidth:I

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/view/ComboButton;->invalidate()V

    return-void
.end method

.method public setIconFileName(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->iconFileName:Ljava/lang/String;

    return-void
.end method

.method public setIconMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Ltw/edu/kmu/view/ComboButton;->iconMap:Ljava/util/Map;

    return-void
.end method

.method public setIconShown(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Ltw/edu/kmu/view/ComboButton;->isIconShown:Z

    return-void
.end method

.method public setOldX(I)V
    .locals 0

    .line 134
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->oldX:I

    return-void
.end method

.method public setOldY(I)V
    .locals 0

    .line 142
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->oldY:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 122
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->newX:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 126
    iput p1, p0, Ltw/edu/kmu/view/ComboButton;->newY:I

    return-void
.end method
