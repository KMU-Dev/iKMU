.class public Ltw/edu/kmu/act/GalleryActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private btMusic:Landroid/widget/Button;

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

.field private extra:Landroid/os/Bundle;

.field private gallery:Landroid/widget/Gallery;

.field private handler:Landroid/os/Handler;

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imgRes:Ltw/edu/kmu/resource/ImageResource;

.field private imgUrl:Ljava/lang/String;

.field private isInfinity:Z

.field private isLoaded:[Z

.field private noImageBitmap:Landroid/graphics/Bitmap;

.field private picHeight:I

.field private picWidth:I

.field private playSongListener:Ltw/edu/kmu/listener/PlaySongListener;

.field private progressbarMusic:Landroid/widget/ProgressBar;

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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Ltw/edu/kmu/act/GalleryActivity;->isInfinity:Z

    const/16 v0, 0xa

    .line 50
    iput v0, p0, Ltw/edu/kmu/act/GalleryActivity;->CLOSE_PROGRESSBAR:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ltw/edu/kmu/act/GalleryActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/GalleryActivity$3;-><init>(Ltw/edu/kmu/act/GalleryActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/GalleryActivity;)[Z
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/GalleryActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->noImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->imgUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/resource/ImageResource;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->imgRes:Ltw/edu/kmu/resource/ImageResource;

    return-object p0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/GalleryActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Ltw/edu/kmu/act/GalleryActivity;->picWidth:I

    return p0
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/GalleryActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Ltw/edu/kmu/act/GalleryActivity;->picHeight:I

    return p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/GalleryActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryActivity;->releaseBitmap()V

    return-void
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->playSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/GalleryActivity;Ltw/edu/kmu/listener/PlaySongListener;)Ltw/edu/kmu/listener/PlaySongListener;
    .locals 0

    .line 41
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->playSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->btMusic:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->progressbarMusic:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/GalleryActivity;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Gallery;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/GalleryActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Ltw/edu/kmu/act/GalleryActivity;->isInfinity:Z

    return p0
.end method

.method private freeBitmapFromIndex(I)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 236
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 237
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    sget-object v0, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

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

.method private releaseBitmap()V
    .locals 7

    .line 210
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 211
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 212
    sget-object v2, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gallery.getFirstVisiblePosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v2, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gallery.getLastVisiblePosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v2, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v2, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

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

    .line 218
    iget-object v3, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 220
    sget-object v4, Ltw/edu/kmu/act/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, v1}, Ltw/edu/kmu/act/GalleryActivity;->freeBitmapFromIndex(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 372
    iget-boolean v0, p0, Ltw/edu/kmu/act/GalleryActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0067

    return v0

    :cond_0
    const v0, 0x7f0a0068

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 383
    invoke-super {p0, p1, p2, p3}, Ltw/edu/kmu/act/BasicActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u53d6\u56derequest"

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tresultCode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "isLoaded"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_1

    .line 388
    array-length p2, p1

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    array-length p3, p3

    if-ne p2, p3, :cond_1

    .line 389
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 74
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/high16 p1, 0x43700000    # 240.0f

    .line 79
    invoke-static {p0, p1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/GalleryActivity;->picWidth:I

    const/high16 p1, 0x43340000    # 180.0f

    .line 81
    invoke-static {p0, p1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/GalleryActivity;->picHeight:I

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->imgUrl:Ljava/lang/String;

    .line 85
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->imgRes:Ltw/edu/kmu/resource/ImageResource;

    .line 86
    iget-boolean p1, p0, Ltw/edu/kmu/act/GalleryActivity;->isPad:Z

    const-wide v0, 0x3fd999999999999aL    # 0.4

    if-eqz p1, :cond_0

    .line 87
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity;->imgRes:Ltw/edu/kmu/resource/ImageResource;

    const v3, 0x7f070186

    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-double v5, p1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v5, v5

    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->noImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->imgRes:Ltw/edu/kmu/resource/ImageResource;

    const v2, 0x7f070186

    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-int v4, v4

    iget-object v5, p0, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    double-to-int v5, v5

    const/4 v6, 0x0

    move-object v0, p1

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->noImageBitmap:Landroid/graphics/Bitmap;

    .line 92
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->extra:Landroid/os/Bundle;

    .line 93
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->extra:Landroid/os/Bundle;

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ename"

    goto :goto_1

    :cond_1
    const-string v0, "name"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080048

    .line 95
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->btMusic:Landroid/widget/Button;

    const p1, 0x7f080150

    .line 96
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity;->progressbarMusic:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    .line 100
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryActivity;->extra:Landroid/os/Bundle;

    const-string v2, "picList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 111
    :cond_2
    iget-object v3, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Loal POI Json to Map Exception"

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v0, 0x7f0800eb

    .line 119
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-boolean v1, p0, Ltw/edu/kmu/act/GalleryActivity;->isEnglish:Z

    if-eqz v1, :cond_5

    const-string v1, "Desc:"

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v0, 0x7f0800e9

    .line 124
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->imgList:Ljava/util/List;

    .line 126
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_6

    .line 128
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity;->imgList:Ljava/util/List;

    iget-object v3, p0, Ltw/edu/kmu/act/GalleryActivity;->noImageBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 132
    :cond_6
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    new-instance v1, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity;->imgList:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;-><init>(Ltw/edu/kmu/act/GalleryActivity;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 134
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    new-instance v1, Ltw/edu/kmu/act/GalleryActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryActivity$1;-><init>(Ltw/edu/kmu/act/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    new-instance v1, Ltw/edu/kmu/act/GalleryActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryActivity$2;-><init>(Ltw/edu/kmu/act/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery;->setFadingEdgeLength(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->isLoaded:[Z

    const v1, 0x7f080005

    .line 408
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 409
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 410
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->dateCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 413
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 415
    :cond_0
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 398
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->playSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity;->playSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    invoke-virtual {v0}, Ltw/edu/kmu/listener/PlaySongListener;->turnOff()V

    .line 402
    :cond_0
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method
