.class public Ltw/edu/kmu/view/ZoomImageBox;
.super Landroid/widget/Gallery;
.source "ZoomImageBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/view/ZoomImageBox$MySimpleGesture;
    }
.end annotation


# instance fields
.field private imageView:Ltw/edu/kmu/view/ZoomImageView;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Ltw/edu/kmu/view/ZoomImageBox$1;

    invoke-direct {p1, p0}, Ltw/edu/kmu/view/ZoomImageBox$1;-><init>(Ltw/edu/kmu/view/ZoomImageBox;)V

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/view/ZoomImageBox;)Ltw/edu/kmu/view/ZoomImageView;
    .locals 0

    .line 13
    iget-object p0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    return-object p0
.end method

.method static synthetic access$002(Ltw/edu/kmu/view/ZoomImageBox;Ltw/edu/kmu/view/ZoomImageView;)Ltw/edu/kmu/view/ZoomImageView;
    .locals 0

    .line 13
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    return-object p1
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageBox;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const-string v1, "\u9806\u5e8f"

    const-string v2, "onScroll"

    .line 93
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    instance-of v1, v0, Ltw/edu/kmu/view/ZoomImageView;

    if-eqz v1, :cond_9

    .line 95
    check-cast v0, Ltw/edu/kmu/view/ZoomImageView;

    iput-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    .line 96
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    iget-boolean v0, v0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x9

    .line 101
    new-array v0, v0, [F

    .line 102
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v1}, Ltw/edu/kmu/view/ZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 108
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v1}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v2}, Ltw/edu/kmu/view/ZoomImageView;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 109
    iget-object v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v2}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v2

    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v3}, Ltw/edu/kmu/view/ZoomImageView;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v3, v1

    .line 111
    iget v4, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v4, :cond_3

    float-to-int v2, v2

    iget v3, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenHeight:I

    if-gt v2, v3, :cond_3

    .line 115
    aget v0, v0, v5

    add-float/2addr v0, v1

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 118
    iget-object v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v2, v1}, Ltw/edu/kmu/view/ZoomImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    cmpl-float v2, p3, v6

    if-lez v2, :cond_1

    const-string v2, "\u5de6\u79fb"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tright:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\tscreenWidth:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\tdistanceX:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\tdistanceY:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmpg-float v2, p3, v6

    if-gez v2, :cond_2

    const-string v2, "\u53f3\u79fb"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tright:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\tscreenWidth:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\tdistanceX:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\tdistanceY:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 127
    :cond_3
    aget v0, v0, v5

    add-float/2addr v1, v0

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 130
    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v3, v2}, Ltw/edu/kmu/view/ZoomImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    cmpl-float v3, p3, v6

    if-lez v3, :cond_5

    const-string v0, "\u5de6\u79fb"

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tright:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\tscreenWidth:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tdistanceX:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\tdistanceY:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_1

    .line 138
    :cond_4
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    goto :goto_1

    :cond_5
    cmpg-float v3, p3, v6

    if-gez v3, :cond_8

    const-string v3, "\u53f3\u79fb"

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r.right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\tright:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\tscreenWidth:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tdistanceX:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\tdistanceY:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    if-ge v1, v2, :cond_6

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_1

    :cond_6
    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_1

    .line 156
    :cond_7
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    :cond_8
    :goto_1
    const/4 p1, 0x1

    return p1

    .line 163
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "\u9806\u5e8f"

    const-string v1, "onTouchEvent:ACTION_UP"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageBox;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 183
    instance-of v1, v0, Ltw/edu/kmu/view/ZoomImageView;

    if-eqz v1, :cond_6

    .line 184
    check-cast v0, Ltw/edu/kmu/view/ZoomImageView;

    iput-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    .line 185
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    iget-boolean v0, v0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 189
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    .line 190
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v1}, Ltw/edu/kmu/view/ZoomImageView;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 191
    iget-object v2, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v2}, Ltw/edu/kmu/view/ZoomImageView;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    const-string v3, "MyGallery onTouchEvent"

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageView.getScale()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, v1

    .line 193
    iget v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    if-gt v0, v1, :cond_2

    float-to-int v0, v2

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenHeight:I

    if-gt v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 199
    new-array v0, v0, [F

    .line 200
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    invoke-virtual {v1}, Ltw/edu/kmu/view/ZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x5

    .line 202
    aget v0, v0, v1

    add-float v1, v0, v2

    const-string v3, "top & bottom"

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "\tbottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "\tscreenHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageBox;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_3

    int-to-float v5, v3

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_6

    :cond_3
    cmpg-float v5, v0, v4

    if-gtz v5, :cond_4

    int-to-float v5, v3

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_4

    goto :goto_0

    :cond_4
    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 211
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    neg-float v0, v0

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    add-float/2addr v0, v3

    invoke-virtual {v1, v0, v5}, Ltw/edu/kmu/view/ZoomImageView;->postTranslateDur(FF)V

    goto :goto_0

    :cond_5
    int-to-float v0, v3

    cmpg-float v3, v1, v0

    if-gez v3, :cond_6

    .line 213
    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageBox;->imageView:Ltw/edu/kmu/view/ZoomImageView;

    sub-float v1, v0, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v5}, Ltw/edu/kmu/view/ZoomImageView;->postTranslateDur(FF)V

    .line 218
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScreenHeight(I)V
    .locals 0

    .line 26
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenHeight:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 22
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageBox;->screenWidth:I

    return-void
.end method
