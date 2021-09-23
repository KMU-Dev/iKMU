.class public Ltw/edu/kmu/view/KScalableImageView2;
.super Landroid/widget/ImageView;
.source "KScalableImageView2.java"


# static fields
.field private static TAG:Ljava/lang/String; = "\u53ef\u7e2e\u653eImageView"


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field canvasButton:I

.field canvasLeft:I

.field canvasRight:I

.field canvasTop:I

.field private centerX:F

.field private centerY:F

.field private context:Landroid/content/Context;

.field private defaultHeight:I

.field private defaultWidth:I

.field private defaultX:I

.field private defaultY:I

.field private detector:Landroid/view/ScaleGestureDetector;

.field private display:Landroid/view/Display;

.field private event:Landroid/view/MotionEvent;

.field private imgDrawable:Landroid/graphics/drawable/Drawable;

.field private isWideImage:Z

.field private mX:F

.field private mY:F

.field private preX:F

.field private preY:F

.field private scaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    .line 84
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ltw/edu/kmu/view/KScalableImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    .line 90
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->context:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ltw/edu/kmu/view/KScalableImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    .line 96
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->context:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ltw/edu/kmu/view/KScalableImageView2;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Ltw/edu/kmu/view/KScalableImageView2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltw/edu/kmu/view/KScalableImageView2;)F
    .locals 0

    .line 21
    iget p0, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    return p0
.end method

.method static synthetic access$102(Ltw/edu/kmu/view/KScalableImageView2;F)F
    .locals 0

    .line 21
    iput p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    return p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/view/KScalableImageView2;)Landroid/view/MotionEvent;
    .locals 0

    .line 21
    iget-object p0, p0, Ltw/edu/kmu/view/KScalableImageView2;->event:Landroid/view/MotionEvent;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 104
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    .line 105
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->context:Landroid/content/Context;

    new-instance v2, Ltw/edu/kmu/view/KScalableImageView2$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/view/KScalableImageView2$1;-><init>(Ltw/edu/kmu/view/KScalableImageView2;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->detector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private moveImage(FF)V
    .locals 1

    .line 266
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->preX:F

    sub-float v0, p1, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->mX:F

    .line 267
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->preY:F

    sub-float v0, p2, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->mY:F

    .line 270
    iput p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->preX:F

    .line 271
    iput p2, p0, Ltw/edu/kmu/view/KScalableImageView2;->preY:F

    .line 278
    invoke-virtual {p0}, Ltw/edu/kmu/view/KScalableImageView2;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 178
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvas:Landroid/graphics/Canvas;

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    sget-object v0, Ltw/edu/kmu/view/KScalableImageView2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b0\u5716scale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 184
    sget-object v0, Ltw/edu/kmu/view/KScalableImageView2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u653e\u5927\u500d\u6578\u662f\u5426\u70ba1.0?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->mX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    .line 188
    sget-object v0, Ltw/edu/kmu/view/KScalableImageView2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79fb\u52d5\u8ddd\u96e2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",\t\u65b0\u4f4d\u7f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasLeft:I

    .line 194
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->mY:F

    add-float/2addr v0, v1

    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float v2, v3, v2

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    .line 196
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    if-gtz v0, :cond_2

    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    int-to-float v1, v1

    iget-object v4, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    .line 197
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->mY:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    goto :goto_2

    .line 198
    :cond_2
    :goto_1
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    int-to-float v0, v0

    iget-object v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float v4, v3, v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    .line 203
    :goto_2
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasLeft:I

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasRight:I

    .line 205
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasButton:I

    .line 207
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->imgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasLeft:I

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasTop:I

    iget v3, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasRight:I

    iget v4, p0, Ltw/edu/kmu/view/KScalableImageView2;->canvasButton:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->imgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 218
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->event:Landroid/view/MotionEvent;

    .line 219
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 222
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Ltw/edu/kmu/view/KScalableImageView2;->moveImage(FF)V

    return v1

    .line 229
    :pswitch_1
    iget-boolean p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->isWideImage:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 230
    iget p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 232
    iput v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    .line 233
    invoke-virtual {p0}, Ltw/edu/kmu/view/KScalableImageView2;->invalidate()V

    .line 236
    :cond_0
    iget p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    if-lez p1, :cond_1

    .line 238
    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    .line 239
    invoke-virtual {p0}, Ltw/edu/kmu/view/KScalableImageView2;->invalidate()V

    goto :goto_0

    .line 241
    :cond_1
    iget p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float v3, v2, v3

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 244
    iget-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->scaleFactor:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    neg-float p1, p1

    float-to-int p1, p1

    iput p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    .line 245
    invoke-virtual {p0}, Ltw/edu/kmu/view/KScalableImageView2;->invalidate()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0

    .line 225
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->preX:F

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->preY:F

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public relocateImage()V
    .locals 4

    .line 153
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->imgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    .line 154
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->imgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    .line 156
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 157
    iget-object v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    .line 160
    iget-object v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    .line 161
    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    .line 162
    iput v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->isWideImage:Z

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    .line 167
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultHeight:I

    .line 169
    iget-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v2, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultX:I

    .line 170
    iput v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->defaultY:I

    .line 171
    iput-boolean v1, p0, Ltw/edu/kmu/view/KScalableImageView2;->isWideImage:Z

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iput-object p1, p0, Ltw/edu/kmu/view/KScalableImageView2;->bm:Landroid/graphics/Bitmap;

    .line 144
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ltw/edu/kmu/view/KScalableImageView2;->imgDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0}, Ltw/edu/kmu/view/KScalableImageView2;->relocateImage()V

    return-void
.end method
