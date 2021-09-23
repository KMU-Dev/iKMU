.class public Ltw/edu/kmu/act/LoadImageService;
.super Landroid/app/Service;
.source "LoadImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/LoadImageService$ScanImage;,
        Ltw/edu/kmu/act/LoadImageService$CommandReciver;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static URL_IMAGE:Ljava/lang/String;

.field private static URL_IMAGE_DEFAULT:Ljava/lang/String;

.field private static flag:Z

.field private static handler:Landroid/os/Handler;

.field private static hasRoundCorner:Z

.field private static imageBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static imageTempBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static imageUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isBufferKeyGotten:Z

.field private static isTempHasData:Z

.field private static isTempKeyGotton:Z

.field private static limitH:I

.field private static limitW:I

.field private static noImageBitmap:Landroid/graphics/Bitmap;

.field private static roundCorner:I


# instance fields
.field private cmdReciver:Ltw/edu/kmu/act/LoadImageService$CommandReciver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->SERVICE_NAME:Ljava/lang/String;

    .line 24
    const-class v0, Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->imageBuffer:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->imageTempBuffer:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->imageUrlMap:Ljava/util/HashMap;

    .line 35
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isBufferKeyGotten:Z

    .line 36
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isTempKeyGotton:Z

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Ltw/edu/kmu/act/LoadImageService;->hasRoundCorner:Z

    const/16 v0, 0xc8

    .line 38
    sput v0, Ltw/edu/kmu/act/LoadImageService;->limitW:I

    .line 39
    sput v0, Ltw/edu/kmu/act/LoadImageService;->limitH:I

    const/16 v0, 0xa

    .line 40
    sput v0, Ltw/edu/kmu/act/LoadImageService;->roundCorner:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 20
    sget-boolean v0, Ltw/edu/kmu/act/LoadImageService;->flag:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 20
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->releaseTempKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Ltw/edu/kmu/act/LoadImageService;->flag:Z

    return p0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/HashMap;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageUrlMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->URL_IMAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 20
    sget-boolean v0, Ltw/edu/kmu/act/LoadImageService;->hasRoundCorner:Z

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 20
    sget v0, Ltw/edu/kmu/act/LoadImageService;->roundCorner:I

    return v0
.end method

.method static synthetic access$1600()Landroid/graphics/Bitmap;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->noImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 20
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->releaseBufferKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 20
    sget-boolean v0, Ltw/edu/kmu/act/LoadImageService;->isTempHasData:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Ltw/edu/kmu/act/LoadImageService;->isTempHasData:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->SERVICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 20
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->getBufferKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 20
    sget v0, Ltw/edu/kmu/act/LoadImageService;->limitW:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 20
    sget v0, Ltw/edu/kmu/act/LoadImageService;->limitH:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 20
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->getTempKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageTempBuffer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageBuffer:Ljava/util/HashMap;

    return-object v0
.end method

.method private static declared-synchronized getBufferKey()Z
    .locals 4

    const-class v0, Ltw/edu/kmu/act/LoadImageService;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isBufferKeyGotten:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 117
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 119
    :try_start_1
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isBufferKeyGotten:Z

    const-string v2, "Key"

    const-string v3, "\u53d6\u5f97"

    .line 120
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 115
    monitor-exit v0

    throw v1
.end method

.method public static getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Ltw/edu/kmu/act/LoadImageService;->getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 161
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8981\u6c42\u5716\u7247:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageBuffer:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    :goto_0
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->getTempKey()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageTempBuffer:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 166
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->imageUrlMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    .line 168
    sput-boolean p0, Ltw/edu/kmu/act/LoadImageService;->isTempHasData:Z

    .line 169
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->releaseTempKey()Z

    return-object v1

    .line 174
    :cond_2
    sget-object p1, Ltw/edu/kmu/act/LoadImageService;->imageBuffer:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static declared-synchronized getTempKey()Z
    .locals 4

    const-class v0, Ltw/edu/kmu/act/LoadImageService;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isTempKeyGotton:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 132
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 134
    :try_start_1
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isTempKeyGotton:Z

    const-string v2, "Key"

    const-string v3, "\u53d6\u5f97"

    .line 135
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized releaseBufferKey()Z
    .locals 3

    const-class v0, Ltw/edu/kmu/act/LoadImageService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 125
    :try_start_0
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isBufferKeyGotten:Z

    const-string v1, "Key"

    const-string v2, "\u91cb\u653e"

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 127
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized releaseTempKey()Z
    .locals 3

    const-class v0, Ltw/edu/kmu/act/LoadImageService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 140
    :try_start_0
    sput-boolean v1, Ltw/edu/kmu/act/LoadImageService;->isTempKeyGotton:Z

    const-string v1, "Key"

    const-string v2, "\u91cb\u653e"

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 142
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0

    throw v1
.end method

.method public static resetService()V
    .locals 1

    .line 231
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->URL_IMAGE_DEFAULT:Ljava/lang/String;

    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setImageUrl(Ljava/lang/String;)V

    const/16 v0, 0xc8

    .line 232
    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setLimitW(I)V

    .line 233
    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setLimitH(I)V

    const/16 v0, 0xa

    .line 234
    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setRoundCorner(I)V

    const/4 v0, 0x1

    .line 235
    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setHasRoundCorner(Z)V

    const/4 v0, 0x0

    .line 236
    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->noImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 183
    sput-object p0, Ltw/edu/kmu/act/LoadImageService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static setHasRoundCorner(Z)V
    .locals 0

    .line 215
    sput-boolean p0, Ltw/edu/kmu/act/LoadImageService;->hasRoundCorner:Z

    return-void
.end method

.method public static setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 191
    sput-object p0, Ltw/edu/kmu/act/LoadImageService;->URL_IMAGE:Ljava/lang/String;

    return-void
.end method

.method public static setLimitH(I)V
    .locals 0

    .line 207
    sput p0, Ltw/edu/kmu/act/LoadImageService;->limitH:I

    return-void
.end method

.method public static setLimitW(I)V
    .locals 0

    .line 199
    sput p0, Ltw/edu/kmu/act/LoadImageService;->limitW:I

    return-void
.end method

.method public static setNoImage(ILandroid/content/res/Resources;)V
    .locals 6

    .line 358
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v0

    sget v3, Ltw/edu/kmu/act/LoadImageService;->limitW:I

    sget v4, Ltw/edu/kmu/act/LoadImageService;->limitH:I

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Ltw/edu/kmu/act/LoadImageService;->noImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setRoundCorner(I)V
    .locals 0

    .line 223
    sput p0, Ltw/edu/kmu/act/LoadImageService;->roundCorner:I

    return-void
.end method


# virtual methods
.method public loadImage()V
    .locals 1

    .line 95
    new-instance v0, Ltw/edu/kmu/act/LoadImageService$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/LoadImageService$1;-><init>(Ltw/edu/kmu/act/LoadImageService;)V

    .line 112
    invoke-virtual {v0}, Ltw/edu/kmu/act/LoadImageService$1;->start()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->TAG:Ljava/lang/String;

    const-string v1, "\u5efa\u7acbService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_NAME is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltw/edu/kmu/act/LoadImageService;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Ltw/edu/kmu/act/LoadImageService;->flag:Z

    .line 69
    new-instance v0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/LoadImageService$CommandReciver;-><init>(Ltw/edu/kmu/act/LoadImageService;Ltw/edu/kmu/act/LoadImageService$1;)V

    iput-object v0, p0, Ltw/edu/kmu/act/LoadImageService;->cmdReciver:Ltw/edu/kmu/act/LoadImageService$CommandReciver;

    const v0, 0x7f0c001c

    .line 70
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/LoadImageService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltw/edu/kmu/act/LoadImageService;->URL_IMAGE_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Ltw/edu/kmu/act/LoadImageService;->flag:Z

    .line 89
    iget-object v0, p0, Ltw/edu/kmu/act/LoadImageService;->cmdReciver:Ltw/edu/kmu/act/LoadImageService$CommandReciver;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/LoadImageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 77
    sget-object v0, Ltw/edu/kmu/act/LoadImageService;->TAG:Ljava/lang/String;

    const-string v1, "start command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    sget-object v1, Ltw/edu/kmu/act/LoadImageService;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Ltw/edu/kmu/act/LoadImageService;->cmdReciver:Ltw/edu/kmu/act/LoadImageService$CommandReciver;

    invoke-virtual {p0, v1, v0}, Ltw/edu/kmu/act/LoadImageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Ltw/edu/kmu/act/LoadImageService;->loadImage()V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
