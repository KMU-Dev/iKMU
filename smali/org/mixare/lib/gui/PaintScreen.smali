.class public Lorg/mixare/lib/gui/PaintScreen;
.super Ljava/lang/Object;
.source "PaintScreen.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/gui/PaintScreen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bPaint:Landroid/graphics/Paint;

.field canvas:Landroid/graphics/Canvas;

.field height:I

.field paint:Landroid/graphics/Paint;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/mixare/lib/gui/PaintScreen$1;

    invoke-direct {v0}, Lorg/mixare/lib/gui/PaintScreen$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/gui/PaintScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->bPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->bPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p0, p1}, Lorg/mixare/lib/gui/PaintScreen;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/mixare/lib/gui/PaintScreen;->height:I

    return v0
.end method

.method public getTextAsc()F
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getTextDesc()F
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    return v0
.end method

.method public getTextLead()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;)F
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/mixare/lib/gui/PaintScreen;->width:I

    return v0
.end method

.method public paintBitmap(Landroid/graphics/Bitmap;FF)V
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintCircle(FFF)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintLine(FFFF)V
    .locals 6

    .line 105
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintObj(Lorg/mixare/lib/gui/ScreenObj;FFFF)V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 144
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-interface {p1}, Lorg/mixare/lib/gui/ScreenObj;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    invoke-interface {p1}, Lorg/mixare/lib/gui/ScreenObj;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 146
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 147
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-interface {p1}, Lorg/mixare/lib/gui/ScreenObj;->getWidth()F

    move-result p3

    div-float/2addr p3, v2

    neg-float p3, p3

    invoke-interface {p1}, Lorg/mixare/lib/gui/ScreenObj;->getHeight()F

    move-result p4

    div-float/2addr p4, v2

    neg-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    invoke-interface {p1, p0}, Lorg/mixare/lib/gui/ScreenObj;->paint(Lorg/mixare/lib/gui/PaintScreen;)V

    .line 149
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public paintPath(Landroid/graphics/Path;FFFFFF)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    add-float/2addr p2, p4

    div-float/2addr p5, v1

    add-float/2addr p3, p5

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 126
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 127
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    neg-float p3, p4

    neg-float p4, p5

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public paintRect(FFFF)V
    .locals 6

    .line 109
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintRoundedRect(FFFF)V
    .locals 1

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintText(FFLjava/lang/String;Z)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 138
    iget-object p4, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3, p1, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/PaintScreen;->height:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mixare/lib/gui/PaintScreen;->width:I

    .line 187
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFill(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 78
    iput p1, p0, Lorg/mixare/lib/gui/PaintScreen;->height:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/mixare/lib/gui/PaintScreen;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/mixare/lib/gui/PaintScreen;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 179
    iget p2, p0, Lorg/mixare/lib/gui/PaintScreen;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p2, p0, Lorg/mixare/lib/gui/PaintScreen;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
