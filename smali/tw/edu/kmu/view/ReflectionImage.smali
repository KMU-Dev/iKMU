.class public Ltw/edu/kmu/view/ReflectionImage;
.super Landroid/widget/ImageView;
.source "ReflectionImage.java"


# instance fields
.field private mReflectionMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Ltw/edu/kmu/view/ReflectionImage;->mReflectionMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Ltw/edu/kmu/view/ReflectionImage;->mReflectionMode:Z

    .line 29
    invoke-virtual {p0}, Ltw/edu/kmu/view/ReflectionImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ReflectionImage;->DoReflection(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Ltw/edu/kmu/view/ReflectionImage;->mReflectionMode:Z

    .line 35
    invoke-virtual {p0}, Ltw/edu/kmu/view/ReflectionImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ReflectionImage;->DoReflection(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private DoReflection(Landroid/graphics/Bitmap;)V
    .locals 20

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 69
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 70
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v3, v7

    move v4, v8

    .line 72
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v9, v8

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v9

    float-to-int v1, v1

    .line 74
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 75
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p1

    .line 77
    invoke-virtual {v11, v14, v13, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    int-to-float v7, v7

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    const/4 v2, 0x0

    move-object v1, v11

    move v3, v9

    move v4, v7

    move v5, v8

    .line 80
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    invoke-virtual {v11, v0, v13, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v14, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const v17, -0x7f000001

    const v18, 0xffffff

    move-object v12, v0

    move/from16 v16, v1

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 87
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v5, v0

    move-object v1, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    .line 93
    invoke-super {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getReflectionMode()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Ltw/edu/kmu/view/ReflectionImage;->mReflectionMode:Z

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ReflectionImage;->DoReflection(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Ltw/edu/kmu/view/ReflectionImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ReflectionImage;->DoReflection(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setReflectionMode(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Ltw/edu/kmu/view/ReflectionImage;->mReflectionMode:Z

    return-void
.end method
