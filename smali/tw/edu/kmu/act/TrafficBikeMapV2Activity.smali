.class public Ltw/edu/kmu/act/TrafficBikeMapV2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TrafficBikeMapV2Activity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TrafficBikeMapV2Activity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficBikeMapV2Activity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private final CLOSE_TIMER:I

.field private bundle:Landroid/os/Bundle;

.field private carMarker:Landroid/graphics/drawable/Drawable;

.field private currentLocale:Ljava/lang/String;

.field private delayTime:J

.field private handler:Landroid/os/Handler;

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field protected mainHandler:Landroid/os/Handler;

.field private marker:Landroid/graphics/drawable/Drawable;

.field private progressDialog:Landroid/app/ProgressDialog;

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

.field private updateTimer:Ljava/lang/Runnable;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/16 v0, 0xa

    .line 57
    iput v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->CLOSE_PROGRESSBAR:I

    const/16 v0, 0x14

    .line 59
    iput v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->CLOSE_TIMER:I

    const-wide/16 v0, 0x7530

    .line 63
    iput-wide v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->delayTime:J

    .line 256
    new-instance v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$2;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    .line 284
    new-instance v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    .line 331
    new-instance v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetCustomBitmapDescriptor(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 9

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 228
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 230
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 231
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 233
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    .line 235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v6, v2

    .line 242
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v8, -0x10000

    .line 243
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 244
    invoke-static {p0, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    invoke-virtual {v2, p1, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 p1, -0x1000000

    .line 246
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    invoke-virtual {v2, p2, v7, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->delayTime:J

    return-wide v0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->showPoi()V

    return-void
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static isGPSEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 175
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isNetworkAlive()Z
    .locals 1

    const-string v0, "connectivity"

    .line 272
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 273
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-direct {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->isNetworkAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 396
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    iget-object v3, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private showPoi()V
    .locals 8

    .line 184
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 191
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 193
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 195
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "cbikeStationLatitude"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "cbikeStationLongitude"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 198
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 200
    iget-object v3, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "cbikeStationEName"

    goto :goto_1

    :cond_1
    const-string v3, "cbikeStationName"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cbikeStationNumber"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cbikeStationEmpytSeat"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->GetCustomBitmapDescriptor(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 204
    iget-object v3, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cbikeStationEName"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string v3, "cbikeStationName"

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cbikeStationNumber"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cbikeStationEmpytSeat"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 209
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    sget-object v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    .line 80
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Loading.."

    goto :goto_0

    :cond_0
    const-string v1, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Please wait"

    goto :goto_1

    :cond_1
    const-string v1, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 87
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p1, 0x7

    .line 90
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x7f0a00b7

    .line 94
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, p1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 97
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->bundle:Landroid/os/Bundle;

    const p1, 0x7f08022e

    .line 98
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070131

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->marker:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->marker:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->marker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->marker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07007f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->carMarker:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->carMarker:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->carMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->carMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f080125

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 110
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 410
    sget-object v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 118
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 121
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 125
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 143
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$1;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 165
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->url:Ljava/lang/String;

    .line 167
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 168
    new-instance p1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$GetServerData;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;Ltw/edu/kmu/act/TrafficBikeMapV2Activity$1;)V

    .line 169
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 428
    sget-object v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 418
    sget-object v0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->updateTimer:Ljava/lang/Runnable;

    iget-wide v2, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->delayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method
