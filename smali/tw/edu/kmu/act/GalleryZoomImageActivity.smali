.class public Ltw/edu/kmu/act/GalleryZoomImageActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "GalleryZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_FROM_NETWORK:I = 0x2

.field private static final IMAGE_INIT:I = 0x0

.field private static final IMGAE_FROM_SDCARD:I = 0x1

.field private static final MSGIDX_INTERRUPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalleryZoomImageActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private dateCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMargin:I

.field private desc:Landroid/widget/TextView;

.field private descTextHeight:I

.field private gallery:Ltw/edu/kmu/view/ZoomImageBox;

.field private handler:Landroid/os/Handler;

.field private isLoadedIndex:I

.field private myImage:[Landroid/graphics/Bitmap;

.field private packageName:Ljava/lang/String;

.field private progress:I

.field private progressWheel:Ltw/edu/kmu/view/ProgressWheel;

.field private serverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progress:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ltw/edu/kmu/act/GalleryZoomImageActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$2;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 344
    new-instance v0, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/GalleryZoomImageActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->isLoadedIndex:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->releaseBitmap()V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ljava/util/HashMap;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/GalleryZoomImageActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/GalleryZoomImageActivity;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->initDesc(I)V

    return-void
.end method

.method private calSampleSize(Ljava/lang/String;)I
    .locals 6

    .line 565
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 566
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 570
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x43a00000    # 320.0f

    const v2, 0x44054000    # 533.0f

    .line 574
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 575
    iput-boolean p1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 576
    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 577
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 578
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-gt v1, p1, :cond_0

    if-le v0, p1, :cond_2

    :cond_0
    if-le v1, v0, :cond_1

    .line 581
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move p1, v1

    goto :goto_0

    .line 584
    :cond_1
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 594
    :cond_2
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " final sampleSize is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private freeBitmapFromIndex(I)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 333
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 334
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 393
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 394
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 399
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 402
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 403
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 404
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    invoke-direct/range {p0 .. p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->calSampleSize(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 406
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 407
    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :try_start_2
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image(s_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") is in sd card "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v7, v4

    :goto_0
    const/4 v3, 0x0

    .line 415
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 418
    :cond_1
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image(s_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is not in sd card "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_4

    .line 426
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    :try_start_3
    new-instance v3, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v3, 0xea60

    .line 432
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 433
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 434
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 436
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 437
    sget-object v8, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6a94\u6848\u5927\u5c0f:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 440
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 442
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x800

    .line 447
    new-array v10, v10, [B

    const/4 v11, 0x0

    .line 450
    :goto_3
    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 451
    invoke-virtual {v9, v10, v6, v12}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v11, v12

    .line 454
    sget-object v12, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6a94\u6848\u9032\u5ea6:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    int-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 455
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    int-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double v14, v14, v12

    double-to-int v14, v14

    .line 456
    :try_start_4
    iput v14, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progress:I

    .line 457
    iget-object v14, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    iget v15, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progress:I

    invoke-virtual {v14, v15}, Ltw/edu/kmu/view/ProgressWheel;->setProgress(I)V

    .line 458
    iget-object v14, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    const-string v15, "%1$2.0f%%"

    new-array v4, v5, [Ljava/lang/Object;

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ltw/edu/kmu/view/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 459
    iget-object v4, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    invoke-virtual {v4}, Ltw/edu/kmu/view/ProgressWheel;->updateWheel()V

    const/4 v4, 0x0

    goto :goto_3

    .line 461
    :cond_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 462
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 463
    sget-object v0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    const-string v3, "\u5f9e\u6a94\u6848\u8b80\u5165\u5716\u7247"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 468
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 469
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 470
    invoke-direct/range {p0 .. p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->calSampleSize(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 471
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x0

    .line 472
    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 473
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "Gallery\u5716\u6a94\u4f86\u6e90"

    const-string v3, "\u7db2\u8def\u4e0b\u8f09\u5f8c\u5b58\u6210\u66ab\u5b58\u6a94"

    .line 474
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v7, v2

    goto :goto_4

    :catch_4
    move-exception v0

    .line 476
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    iget-object v0, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    :cond_4
    :goto_5
    iget-object v0, v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v7
.end method

.method public static getHeight(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 1

    .line 215
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, p2

    const/4 p1, 0x2

    .line 217
    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p0, -0x80000000

    .line 218
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/4 p1, 0x0

    .line 219
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 220
    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->measure(II)V

    .line 221
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private initBtn()V
    .locals 4

    const v0, 0x7f080040

    .line 120
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 123
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "See All"

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v1, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$1;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDesc(I)V
    .locals 4

    .line 227
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x12

    invoke-static {p0, p1, v2, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->getHeight(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->descTextHeight:I

    .line 230
    sget-object p1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desc height is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->descTextHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    iget v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->descTextHeight:I

    neg-int v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->descTextHeight:I

    neg-int v0, v0

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->defaultMargin:I

    .line 233
    iget v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->defaultMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 234
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private releaseBitmap()V
    .locals 7

    .line 307
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v0}, Ltw/edu/kmu/view/ZoomImageBox;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 308
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v1}, Ltw/edu/kmu/view/ZoomImageBox;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 309
    sget-object v2, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gallery.getFirstVisiblePosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v4}, Ltw/edu/kmu/view/ZoomImageBox;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v2, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gallery.getLastVisiblePosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v4}, Ltw/edu/kmu/view/ZoomImageBox;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v2, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 315
    iget-object v3, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 317
    sget-object v4, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, v1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->freeBitmapFromIndex(I)V

    return-void
.end method

.method private setGalleryImage()V
    .locals 3

    const v0, 0x7f0801c7

    .line 245
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 247
    iget v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->isLoadedIndex:I

    invoke-direct {p0, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->initDesc(I)V

    .line 248
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 260
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    new-instance v2, Ltw/edu/kmu/act/GalleryZoomImageActivity$3;

    invoke-direct {v2, p0, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$3;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0800e9

    .line 272
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/ZoomImageBox;

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    .line 273
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setScreenWidth(I)V

    .line 274
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setScreenHeight(I)V

    .line 276
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setVerticalFadingEdgeEnabled(Z)V

    .line 277
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setHorizontalFadingEdgeEnabled(Z)V

    .line 278
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    new-instance v1, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, p0, v2}, Ltw/edu/kmu/act/GalleryZoomImageActivity$ImageAdapter;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    iget v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->isLoadedIndex:I

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setSelection(I)V

    .line 280
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->gallery:Ltw/edu/kmu/view/ZoomImageBox;

    new-instance v1, Ltw/edu/kmu/act/GalleryZoomImageActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$4;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ZoomImageBox;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0069

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->bundle:Landroid/os/Bundle;

    .line 98
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0102

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->packageName:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "isLoadedIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->isLoadedIndex:I

    .line 102
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serverDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->serverDataList:Ljava/util/ArrayList;

    .line 104
    sget-object p1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLoadedIndex is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->isLoadedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080151

    .line 109
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/view/ProgressWheel;

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->progressWheel:Ltw/edu/kmu/view/ProgressWheel;

    .line 111
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->setGalleryImage()V

    .line 113
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->initBtn()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 551
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v0

    invoke-virtual {v0}, Ltw/edu/kmu/resource/ImageResource;->clearCache()V

    .line 552
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 553
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 554
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_1
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected scrollToDesc(I)V
    .locals 4

    .line 160
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    sget-object v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bottomMargin is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and delta is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    const/4 p1, 0x0

    .line 164
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 165
    :cond_0
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    iget v2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->defaultMargin:I

    if-ge v1, v2, :cond_1

    .line 166
    iget p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->defaultMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 167
    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    iget v2, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->defaultMargin:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    if-gez v1, :cond_2

    .line 168
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 170
    :cond_2
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
