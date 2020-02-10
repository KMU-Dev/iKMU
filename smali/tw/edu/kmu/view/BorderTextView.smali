.class public Ltw/edu/kmu/view/BorderTextView;
.super Landroid/widget/TextView;
.source "BorderTextView.java"


# instance fields
.field private color:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xcc

    const/16 p2, 0x80

    const/16 v0, 0x19

    .line 12
    invoke-static {p2, p1, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/BorderTextView;->color:I

    const/4 p1, 0x6

    .line 13
    iput p1, p0, Ltw/edu/kmu/view/BorderTextView;->strokeWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 17
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 18
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 19
    iget v0, p0, Ltw/edu/kmu/view/BorderTextView;->color:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget v0, p0, Ltw/edu/kmu/view/BorderTextView;->strokeWidth:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/BorderTextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 29
    iput p1, p0, Ltw/edu/kmu/view/BorderTextView;->color:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 34
    iput p1, p0, Ltw/edu/kmu/view/BorderTextView;->strokeWidth:I

    return-void
.end method
