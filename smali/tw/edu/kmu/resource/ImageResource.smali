.class public Ltw/edu/kmu/resource/ImageResource;
.super Ljava/lang/Object;
.source "ImageResource.java"


# static fields
.field public static final IMGFROM_LOCAL:I = 0x0

.field public static final IMGFROM_NETWORK:I = 0x1

.field public static final LIMIT_TYPE_FIT_HEIGHT:I = 0x2

.field public static final LIMIT_TYPE_FIT_INSIDE:I = 0x0

.field public static final LIMIT_TYPE_FIT_OUTSIDE:I = 0x5

.field public static final LIMIT_TYPE_FIT_WIDTH:I = 0x1

.field public static final LIMIT_TYPE_ORI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "\u5716\u7247\u8cc7\u6e90"

.field private static instance:Ltw/edu/kmu/resource/ImageResource; = null

.field private static tempSizeLimit:I = 0xa


# instance fields
.field private imgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imgStorage:Ljava/io/File;

.field private isSDCardExist:Z

.field private sdCard:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Ltw/edu/kmu/resource/ImageResource;->isSDCardExist:Z

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iput-boolean v0, p0, Ltw/edu/kmu/resource/ImageResource;->isSDCardExist:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Ltw/edu/kmu/resource/ImageResource;->isSDCardExist:Z

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->sdCard:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/resource/ImageResource;->sdCard:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/resource/ImageResource;->sdCard:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ikmu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    .line 775
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V

    return-void
.end method

.method private declared-synchronized addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V
    .locals 3

    monitor-enter p0

    .line 787
    :goto_0
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Ltw/edu/kmu/resource/ImageResource;->tempSizeLimit:I

    if-le v0, v1, :cond_0

    .line 788
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    iget-object v1, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 790
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 791
    iget-object p3, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 793
    :cond_1
    iget-object p2, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 786
    monitor-exit p0

    throw p1
.end method

.method private getBitmapFromBuffer(II)Landroid/graphics/Bitmap;
    .locals 0

    .line 651
    invoke-direct {p0, p1, p2, p2}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromBuffer(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getBitmapFromBuffer(III)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5716\u6a94ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\t\u5927\u5c0f\u9650\u5236:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    const-string p3, "\u5716\u7247\u8cc7\u6e90"

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.\u53d6\u5f97\u5716\u7247:\u5f9e\u66ab\u5b58\u53d6\u51fa\u5716\u7247:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\twidth:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\theight:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    .line 687
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1.\u53d6\u5f97\u5716\u7247:\u5f9e\u66ab\u5b58\u53d6\u51fa\u5716\u7247:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\t\u66ab\u5b58\u4e2d\u7121\u6b64\u5716\u7247"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getBitmapFromBuffer(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 640
    invoke-direct {p0, p1, p2, p2}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromBuffer(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getBitmapFromBuffer(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5716\u6a94\u540d\u7a31"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t\u5927\u5c0f\u9650\u5236:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    const-string p3, "\u5716\u7247\u8cc7\u6e90"

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.\u53d6\u5f97\u5716\u7247:\u5f9e\u66ab\u5b58\u53d6\u51fa\u5716\u7247:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\twidth:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\theight:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    .line 668
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1.\u53d6\u5f97\u5716\u7247:\u5f9e\u66ab\u5b58\u53d6\u51fa\u5716\u7247:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t\u66ab\u5b58\u4e2d\u7121\u6b64\u5716\u7247"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized getBitmapFromStorage(Ljava/io/File;IIILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 550
    :try_start_0
    invoke-direct/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromStorage(Ljava/io/File;IIILandroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getBitmapFromStorage(Ljava/io/File;IIILandroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    const/4 p5, 0x0

    :try_start_0
    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f9e\u6a94\u6848\u8b80\u5165\u5716\u7247:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u5716\u5f91\u70ba\u8cc7\u6599\u593e"

    .line 557
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-object p5

    .line 560
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 561
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 562
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 563
    invoke-static {v0, p5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 564
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 568
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 569
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v4, "\u5716\u7247\u8cc7\u6e90"

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u539f\u59cb\u5716\u6a94\u5927\u5c0f:\twidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\t \u5927\u5c0f\u9650\u5236:width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, p2, :cond_2

    if-ge v3, p3, :cond_2

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    const-string v2, "\u5716\u7247\u5c0f\u65bc\u9650\u5236\uff0c\u95dc\u9589\u5075\u6e2c\u5716\u7247\u5927\u5c0f"

    .line 574
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 576
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 577
    invoke-static {v0, p5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 579
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    .line 580
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6a94\u6848"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u6709\u554f\u984c\uff0c\u522a\u9664\u672c\u5730\u7aef\u6a94\u6848"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    monitor-exit p0

    return-object v1

    .line 583
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 584
    invoke-direct {p0, v1, p2, p3, p4}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, v1, p4}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b0\u5716\u6a94\u5927\u5c0f(Matrix\u7e2e\u653e):\twidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \theight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    const-string p3, "\u7e2e\u653e\u5716\u7247\u6642\u767c\u751f\u932f\u8aa4"

    .line 589
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 591
    monitor-exit p0

    return-object p5

    .line 596
    :cond_2
    :try_start_5
    invoke-direct {p0, v1, p2, p4}, Ltw/edu/kmu/resource/ImageResource;->getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 597
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eq v0, v2, :cond_3

    .line 599
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 603
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u5716\u6a94\u5927\u5c0f(\u5927\u5716\u91cd\u65b0\u53d6\u6a23):\twidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\theight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0, v0, p2, p3, p4}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result p4

    .line 619
    invoke-direct {p0, v0, p4}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p4

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u5f8c\u7e2e\u653e\u65b0\u5716\u6a94\u5927\u5c0f:\twidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\theight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p6, :cond_4

    .line 623
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/resource/ImageResource;->addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 625
    :cond_4
    monitor-exit p0

    return-object p4

    :cond_5
    :try_start_6
    const-string p1, "\u5716\u7247\u8cc7\u6e90"

    const-string p2, "\u5927\u5716\u91cd\u65b0\u53d6\u6a23\u5931\u6557"

    .line 611
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 613
    monitor-exit p0

    return-object p5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 627
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 628
    monitor-exit p0

    return-object p5

    .line 554
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Ltw/edu/kmu/resource/ImageResource;
    .locals 1

    .line 67
    sget-object v0, Ltw/edu/kmu/resource/ImageResource;->instance:Ltw/edu/kmu/resource/ImageResource;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ltw/edu/kmu/resource/ImageResource;

    invoke-direct {v0}, Ltw/edu/kmu/resource/ImageResource;-><init>()V

    sput-object v0, Ltw/edu/kmu/resource/ImageResource;->instance:Ltw/edu/kmu/resource/ImageResource;

    .line 70
    :cond_0
    sget-object v0, Ltw/edu/kmu/resource/ImageResource;->instance:Ltw/edu/kmu/resource/ImageResource;

    return-object v0
.end method

.method private getRealTargetSizeScale(Landroid/graphics/Bitmap;II)F
    .locals 0

    .line 723
    invoke-direct {p0, p1, p2, p2, p3}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result p1

    return p1
.end method

.method private getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F
    .locals 4

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 737
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u5f97\u9650\u5236\u5716\u6a94\u6bd4\u4f8b(Real)\tLimitSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tLimitType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq p4, v1, :cond_1

    packed-switch p4, :pswitch_data_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    int-to-float p2, p3

    int-to-float p1, p1

    div-float p1, p2, p1

    goto :goto_0

    :pswitch_1
    int-to-float p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :pswitch_2
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    cmpg-float p2, p1, p3

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    cmpl-float p2, p1, p3

    if-ltz p2, :cond_0

    :goto_0
    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    .line 763
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u50b3\u56de\u7cbe\u6e96scale\u5927\u5c0f:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 0

    .line 699
    invoke-direct {p0, p1, p2, p2}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .line 710
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 711
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 712
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Ltw/edu/kmu/resource/ImageResource;->getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;IIZ)I

    move-result p1

    return p1
.end method

.method private getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;III)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 107
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;IIIZ)I

    move-result p1

    return p1
.end method

.method private getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;IIIZ)I
    .locals 3

    .line 122
    iget p5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 123
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u5f97\u9650\u5236\u5716\u6a94\u6bd4\u4f8b(\u6574\u6578\u578b)\tLimitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tLimitType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 163
    :pswitch_1
    div-int/lit8 p5, p5, 0x2

    if-ge p5, p2, :cond_0

    div-int/lit8 v1, p1, 0x2

    if-ge v1, p3, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 134
    :pswitch_2
    div-int/lit8 p1, p1, 0x2

    if-ge p1, p3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 143
    :pswitch_3
    div-int/lit8 p5, p5, 0x2

    if-ge p5, p2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 152
    :pswitch_4
    div-int/lit8 p5, p5, 0x2

    if-ge p5, p2, :cond_3

    div-int/lit8 v1, p1, 0x2

    if-ge v1, p3, :cond_3

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    :pswitch_5
    const-string p1, "\u76ee\u6a19Scale:"

    .line 176
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 159
    :cond_3
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;IIZ)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    .line 119
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;IIIZ)I

    move-result p1

    return p1
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 838
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 840
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 841
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 842
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 843
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 844
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    .line 845
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 847
    invoke-virtual {v1, v3, p1, p1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 848
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 849
    invoke-virtual {v1, p0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 824
    iget-object v0, p0, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 825
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public getLimitedBitmap(ILandroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 297
    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(ILandroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 301
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(ILandroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 304
    invoke-virtual/range {v0 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    .line 318
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 321
    invoke-virtual/range {v0 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 7

    if-gez p1, :cond_0

    const-string p1, "\u5716\u7247\u8cc7\u6e90"

    const-string p2, "\u53c3\u6578\u4e0d\u5408\u6cd5(id < 0)\uff0c\u50b3\u56de\u9810\u8a2d\u7121\u5716\u6a94\u5716\u7247"

    .line 325
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f07013b

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 326
    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 331
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez p4, :cond_2

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const-string p6, "\u5716\u7247\u8cc7\u6e90"

    const-string v0, "\u4e0d\u9650\u5236\u5716\u7247\u5927\u5c0f"

    .line 383
    invoke-static {p6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto/16 :goto_1

    :cond_2
    :goto_0
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9650\u5236\u5716\u7247\u5927\u5c0f\u70ba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u958b\u555f\u9810\u5148\u5075\u6e2c\u5716\u7247\u5927\u5c0f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 338
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 342
    :try_start_0
    invoke-static {p3, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 349
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v4, "\u5716\u7247\u8cc7\u6e90"

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u539f\u59cb\u5716\u6a94\u5927\u5c0f:\twidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-nez p4, :cond_3

    if-eqz p5, :cond_3

    if-lt v3, p5, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    if-nez p5, :cond_4

    if-lt v2, p4, :cond_5

    :cond_4
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    if-ge v2, p4, :cond_6

    if-ge v3, p5, :cond_6

    :cond_5
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    const-string v2, "\u5716\u7247\u5c0f\u65bc\u9650\u5236\uff0c\u95dc\u9589\u5075\u6e2c\u5716\u7247\u5927\u5c0f"

    .line 355
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 356
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 357
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    invoke-direct {p0, v0, p4, p5, p6}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result v1

    :try_start_1
    const-string v2, "\u5716\u7247\u8cc7\u6e90"

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0, v0, v1, v1}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p3, "\u5716\u7247\u8cc7\u6e90"

    .line 366
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b0\u5716\u6a94\u5927\u5c0f(Matrix\u7e2e\u653e):\twidth:"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \theight:"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v0

    goto/16 :goto_1

    :catch_0
    const-string p1, "\u5716\u7247\u8cc7\u6e90"

    const-string p2, "\u627e\u4e0d\u5230\u5716\u7247\uff0c\u50b3\u56de\u9810\u8a2d\u7121\u5716\u6a94\u5716\u7247"

    .line 363
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f07013b

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 364
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 369
    :cond_6
    invoke-direct {p0, v0, p4, p5, p6}, Ltw/edu/kmu/resource/ImageResource;->getTargetSizeScale(Landroid/graphics/BitmapFactory$Options;III)I

    move-result v0

    .line 370
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eq v0, v1, :cond_7

    .line 372
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 374
    :cond_7
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b0\u5716\u6a94\u5927\u5c0f(\u5927\u5716\u91cd\u65b0\u53d6\u6a23):\twidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\theight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0, p3, p4, p5, p6}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result p6

    .line 379
    invoke-direct {p0, p3, p6}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string p6, "\u5716\u7247\u8cc7\u6e90"

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6700\u5f8c\u7e2e\u653e\u65b0\u5716\u6a94\u5927\u5c0f:\twidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\theight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p7, :cond_8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p1

    move v5, p4

    move v6, p5

    .line 388
    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/resource/ImageResource;->addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V

    :cond_8
    const-string p2, "\u5716\u7247\u8cc7\u6e90"

    .line 391
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u53d6\u5f97\u5716\u7247:3.\u5f9eclient\u7aef\u53d6\u51fa\u5716\u7247("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\twidth:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\theight:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :catch_1
    move-exception p1

    .line 344
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string p1, "\u5716\u7247\u8cc7\u6e90"

    const-string p2, "\u627e\u4e0d\u5230\u5716\u7247\uff0c\u50b3\u56de\u9810\u8a2d\u7121\u5716\u6a94\u5716\u7247"

    .line 345
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f07013b

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 346
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    .line 190
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 9

    const v0, 0x7f0c001c

    .line 203
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 233
    invoke-virtual/range {v0 .. v8}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 12

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p4

    move/from16 v11, p5

    if-eqz v9, :cond_6

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 255
    invoke-direct {p0, p1, v10, v11}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromBuffer(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "(\\.[jJ][pP][gG])|(\\.[pP][nN][gG])|(\\.[gG][iI][fF])"

    const-string v1, ""

    .line 261
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7c21\u6613\u6a94\u540d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "drawable"

    move-object v3, p2

    move-object v2, p3

    .line 263
    invoke-virtual {p2, v0, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 266
    invoke-virtual/range {v0 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2.\u53d6\u5f97\u5716\u7247:\u627e\u4e0d\u5230\u5716\u7247"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    if-eqz p8, :cond_3

    .line 272
    iget-object v1, v8, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2.\u53d6\u5f97\u5716\u7247:\u5f9e\u7db2\u8def\u53d6\u51fa\u5716\u7247"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\twidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\theight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 278
    :cond_4
    invoke-direct {p0, v1, v10, v11}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromBuffer(III)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 284
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILjava/lang/String;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    .locals 10

    const v0, 0x7f0c001c

    move-object v3, p2

    .line 218
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    .line 404
    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 417
    invoke-virtual/range {v0 .. v6}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 434
    invoke-virtual/range {v0 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromURL(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    .locals 9

    const v0, 0x7f0c001c

    .line 420
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmapFromURL(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 452
    invoke-virtual/range {v0 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromURL(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLimitedBitmapFromURL(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 12

    move-object v8, p0

    move-object v0, p2

    move v9, p3

    move/from16 v10, p4

    move-object/from16 v1, p6

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 456
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p7, :cond_2

    .line 462
    invoke-direct {p0, p2, p3, v10}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromBuffer(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    move-object v11, v3

    goto :goto_0

    :cond_2
    move-object v11, v2

    .line 481
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 483
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    const-string v4, "\u5716\u7247\u8cc7\u6e90"

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    const-string v4, "\u5f9e\u7db2\u8def\u53d6\u5f97\u6a94\u6848\uff0c\u4e26\u5beb\u5165\u672c\u5730\u7aef\u6a94\u6848"

    .line 487
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v4, Ljava/io/File;

    iget-object v1, v8, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    const-string v5, "\u5df2\u5b58\u65bc\u672c\u5730\u7aef\uff0c\u780d\u6389\u5716\u7247\u91cd\u65b0\u53d6\u5f97"

    .line 496
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 500
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7522\u751f\u65b0\u6a94\u6848:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 504
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 509
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    .line 510
    new-array v3, v3, [B

    .line 512
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x0

    .line 513
    invoke-virtual {v2, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 515
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 516
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6a94\u6848\u5beb\u5165\u5b8c\u7562:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, v4

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p1

    move/from16 v7, p7

    .line 519
    invoke-direct/range {v1 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromStorage(Ljava/io/File;IIILandroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v1, :cond_5

    return-object v1

    .line 524
    :cond_5
    :try_start_3
    iget-object v2, v8, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5716\u7247\u8cc7\u6e90"

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7db2\u8def\u539f\u5716\u5927\u5c0f:\t\u5bec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \t\u9ad8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u5716\u7247\u9650\u5236:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_6

    if-nez v10, :cond_6

    return-object v1

    :cond_6
    move/from16 v2, p5

    .line 532
    invoke-direct {p0, v1, p3, v10, v2}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result v2

    invoke-direct {p0, v1, v2}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u5716\u6a94\u5927\u5c0f(SD\u5361\u5927\u5716\u91cd\u65b0\u53d6\u6a23):\t\u5bec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t\u9ad8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, v8, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move v5, p3

    move/from16 v6, p4

    .line 536
    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/resource/ImageResource;->addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    move-object v11, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v11, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 506
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v2

    :catch_5
    move-exception v0

    .line 544
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_6
    move-exception v0

    .line 542
    :goto_3
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_4
    return-object v11

    :cond_7
    :goto_5
    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    const-string v1, "\u7121\u5716\u7247\u540d\u7a31\u8cc7\u6599"

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getLimitedBitmapFromURLWithWH(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    move-object v8, p0

    move-object v0, p2

    move v9, p3

    move/from16 v10, p4

    move-object/from16 v1, p6

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    .line 854
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 860
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 862
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    const-string v3, "\u5716\u7247\u8cc7\u6e90"

    .line 864
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    const-string v3, "\u5f9e\u7db2\u8def\u53d6\u5f97\u6a94\u6848\uff0c\u4e26\u5beb\u5165\u672c\u5730\u7aef\u6a94\u6848"

    .line 866
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v3, Ljava/io/File;

    iget-object v1, v8, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    const-string v4, "\u5df2\u5b58\u65bc\u672c\u5730\u7aef\uff0c\u780d\u6389\u5716\u7247\u91cd\u65b0\u53d6\u5f97"

    .line 875
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 879
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7522\u751f\u65b0\u6a94\u6848:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 883
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 888
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    .line 889
    new-array v4, v4, [B

    .line 891
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    .line 892
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 895
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6a94\u6848\u5beb\u5165\u5b8c\u7562:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v3

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p1

    .line 898
    invoke-direct/range {v1 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getBitmapFromStorage(Ljava/io/File;IIILandroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v1, :cond_3

    return-object v1

    .line 903
    :cond_3
    :try_start_3
    iget-object v2, v8, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u5716\u7247\u8cc7\u6e90"

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7db2\u8def\u539f\u5716\u5927\u5c0f:\t\u5bec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \t\u9ad8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u5716\u7247\u9650\u5236:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    return-object v1

    :cond_4
    move/from16 v2, p5

    .line 911
    invoke-direct {p0, v1, p3, v10, v2}, Ltw/edu/kmu/resource/ImageResource;->getRealTargetSizeScale(Landroid/graphics/Bitmap;III)F

    move-result v2

    invoke-direct {p0, v1, v2}, Ltw/edu/kmu/resource/ImageResource;->getScaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u5716\u6a94\u5927\u5c0f(SD\u5361\u5927\u5716\u91cd\u65b0\u53d6\u6a23):\t\u5bec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t\u9ad8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v1, v8, Ltw/edu/kmu/resource/ImageResource;->imgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move v5, p3

    move/from16 v6, p4

    .line 915
    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/resource/ImageResource;->addBitmapToBuffer(Landroid/graphics/Bitmap;Ljava/lang/String;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    move-object v11, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v11, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 885
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v11

    :catch_3
    move-exception v0

    :goto_1
    const-string v1, "\u5716\u7247\u8cc7\u6e90"

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_5
    :goto_2
    const-string v0, "\u5716\u7247\u8cc7\u6e90"

    const-string v1, "\u7121\u5716\u7247\u540d\u7a31\u8cc7\u6599"

    .line 855
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public removeFileFormLocal(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 803
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 807
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ltw/edu/kmu/resource/ImageResource;->imgStorage:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v1, "\u5716\u7247\u522a\u9664"

    .line 811
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
