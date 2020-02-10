.class public Ltw/edu/kmu/act/ZoomImageActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "ZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;,
        Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;
    }
.end annotation


# static fields
.field private static final MSGIDX_INTERRUPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZoomImageActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private gallery:Ltw/edu/kmu/view/ZoomImageBox;

.field private handler:Landroid/os/Handler;

.field private isLoaded:[Z

.field private isLoadedIndex:I

.field private myImage:[Landroid/graphics/Bitmap;

.field private packageName:Ljava/lang/String;

.field private progress:I

.field private progressWheel:Ltw/edu/kmu/view/ProgressWheel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->progress:I

    .line 107
    new-instance v0, Ltw/edu/kmu/act/ZoomImageActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ZoomImageActivity$1;-><init>(Ltw/edu/kmu/act/ZoomImageActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/ZoomImageActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltw/edu/kmu/act/ZoomImageActivity;->getAsyncImage()V

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/ZoomImageActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->progress:I

    return p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/ZoomImageActivity;I)I
    .locals 0

    .line 36
    iput p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->progress:I

    return p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/ZoomImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/ZoomImageActivity;)[Z
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->isLoaded:[Z

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/ZoomImageActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->isLoadedIndex:I

    return p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/ZoomImageActivity;)Landroid/os/Bundle;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/ZoomImageActivity;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/ZoomImageActivity;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/ZoomImageActivity;Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity;->calSampleSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/ZoomImageActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Ltw/edu/kmu/act/ZoomImageActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calSampleSize(Ljava/lang/String;)I
    .locals 6

    .line 347
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "inSampleSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x43a00000    # 320.0f

    const v2, 0x44054000    # 533.0f

    .line 361
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 363
    invoke-static {p1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 364
    iget p1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 365
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-gt p1, v1, :cond_1

    if-le v0, v1, :cond_3

    :cond_1
    if-le p1, v0, :cond_2

    .line 368
    iput p1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v1, p1

    goto :goto_0

    .line 371
    :cond_2
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 381
    :cond_3
    :goto_0
    sget-object p1, Ltw/edu/kmu/act/ZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " final sampleSize is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getAsyncImage()V
    .locals 3

    const v0, 0x7f0800e9

    .line 96
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/ZoomImageBox;

    iput-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    .line 97
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setScreenWidth(I)V

    .line 98
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setScreenHeight(I)V

    .line 100
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setVerticalFadingEdgeEnabled(Z)V

    .line 101
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setHorizontalFadingEdgeEnabled(Z)V

    .line 102
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    new-instance v1, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, p0, v2}, Ltw/edu/kmu/act/ZoomImageActivity$ImageAdapter;-><init>(Ltw/edu/kmu/act/ZoomImageActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00fa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Ltw/edu/kmu/act/ZoomImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Ltw/edu/kmu/act/ZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0102

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->packageName:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "isLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->isLoaded:[Z

    .line 72
    iget-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "isLoadedIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->isLoadedIndex:I

    .line 74
    iget-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080151

    .line 77
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/view/ProgressWheel;

    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    .line 79
    new-instance p1, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;-><init>(Ltw/edu/kmu/act/ZoomImageActivity;Ltw/edu/kmu/act/ZoomImageActivity$1;)V

    const/4 v0, 0x1

    .line 80
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/ZoomImageActivity$ReadImages;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 331
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v0

    invoke-virtual {v0}, Ltw/edu/kmu/resource/ImageResource;->clearCache()V

    .line 332
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "isLoaded"

    .line 390
    iget-object v2, p0, Ltw/edu/kmu/act/ZoomImageActivity;->isLoaded:[Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 391
    invoke-virtual {p0, v1, v0}, Ltw/edu/kmu/act/ZoomImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 393
    :cond_0
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
