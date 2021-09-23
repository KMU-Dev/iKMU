.class public Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView2L3SeatV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView2L3SeatV2Activity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private scale:D

.field private seatImageBg:Landroid/widget/ImageView;

.field private seatXYMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->seatXYMap:Ljava/util/HashMap;

    .line 357
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->seatImageBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/os/Bundle;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->showList()V

    return-void
.end method

.method private getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 295
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 297
    new-array p2, p2, [B

    .line 298
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 299
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 300
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    sget-object p2, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getfileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    const-string v2, "\u6821\u53cb\u6703\u9928"

    .line 248
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "alumni_2f_"

    goto :goto_0

    :cond_0
    const-string v2, "\u5bbf\u820d\u65b0\u9928"

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "new_b1_"

    goto :goto_0

    :cond_1
    const-string v2, "\u5716\u66f8\u9928"

    .line 252
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "lib_4f_"

    :cond_2
    :goto_0
    const-string p1, "A\u5340"

    .line 256
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v1, "a"

    goto :goto_1

    :cond_3
    const-string p1, "B\u5340"

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v1, "b"

    goto :goto_1

    :cond_4
    const-string p1, "C\u5340"

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "c"

    goto :goto_1

    :cond_5
    const-string p1, "D\u5340"

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string v1, "d"

    goto :goto_1

    :cond_6
    const-string p1, "E\u5340"

    .line 264
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v1, "e"

    .line 268
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initBackGround()V
    .locals 7

    .line 87
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "initBackGround start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080175

    .line 89
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 90
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v4, "zonename"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getfileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    sget-object v2, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 94
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    .line 96
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 101
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 103
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v2, v3

    int-to-double v5, v3

    iput-wide v5, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->scale:D

    .line 106
    new-instance v3, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;

    invoke-direct {v3, p0, v2, v4, v1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;III)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initSeatPointData(Landroid/content/Context;)V
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v3, "zonename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getfileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 281
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->seatXYMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSeatPointData error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 5
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

    .line 331
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 340
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authid"

    .line 341
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v4, "authid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "zoneid"

    .line 342
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v4, "zoneid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bookdate"

    .line 343
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v4, "bookdate"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 344
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetSeatInfo.aspx"

    .line 346
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->url:Ljava/lang/String;

    .line 347
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 351
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 11

    const v0, 0x7f08019b

    .line 156
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->serverDataList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "resdata"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->serverDataList:Ljava/util/ArrayList;

    .line 161
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 162
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 165
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->seatXYMap:Ljava/util/HashMap;

    const-string v8, "seatname"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    .line 166
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    iget-wide v9, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->scale:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-int v7, v7

    :try_start_1
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v7, "y"

    .line 167
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->scale:D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    :try_start_2
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 168
    iget-wide v6, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->scale:D

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 169
    iget-wide v6, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->scale:D

    mul-double v6, v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 170
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "state"

    .line 171
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getStateColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v4, "state"

    .line 172
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getState(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v4, "seatname"

    .line 174
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v4, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$2;

    invoke-direct {v4, p0, v3}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;Ljava/util/HashMap;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 189
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00bf

    return v0
.end method

.method public getState(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Full"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getStateColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Have"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#FFE981"

    .line 227
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "None"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#78C846"

    .line 230
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const-string v0, "Full"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "#FF0000"

    .line 233
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const-string v0, "InUse"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "#FFE981"

    .line 236
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const-string p1, "#FFE981"

    .line 239
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Have"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5c1a\u6709\u6642\u6bb5\u53ef\u9810\u7d04"

    return-object p1

    :cond_0
    const-string v0, "None"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u5168\u5929\u53ef\u9810\u7d04"

    return-object p1

    :cond_1
    const-string v0, "Full"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u5168\u5929\u5df2\u9810\u7d04"

    return-object p1

    :cond_2
    const-string v0, "InUse"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u4f7f\u7528\u4e2d\uff0c\u5c1a\u6709\u6642\u6bb5\u53ef\u9810\u7d04"

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 53
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    .line 59
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->initBackGround()V

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08019c

    .line 68
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->seatImageBg:Landroid/widget/ImageView;

    .line 70
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->bundle:Landroid/os/Bundle;

    const-string v1, "zonename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->getfileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-direct {p0, p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->initSeatPointData(Landroid/content/Context;)V

    .line 76
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 77
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;)V

    const/4 v0, 0x1

    .line 78
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public praseData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 125
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 126
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 131
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "praseData error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method
