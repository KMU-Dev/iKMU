.class public Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView5L4TimeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView5L4TimeActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;

.field private methodName:Ljava/lang/String;

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

.field private timesegMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
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

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->timesegMap:Ljava/util/HashMap;

    const-string v0, "GetBookTimeSeg"

    .line 46
    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->methodName:Ljava/lang/String;

    .line 283
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)Ljava/util/HashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->timesegMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->methodName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->showList()V

    return-void
.end method

.method private getTimeSeqSting()Ljava/lang/String;
    .locals 4

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->timesegMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 350
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 358
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    :cond_2
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeSeqSting result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private initBtn()V
    .locals 3

    const v0, 0x7f08003f

    .line 74
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    .line 77
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x420c0000    # 35.0f

    .line 78
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070163

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, -0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string v1, "==\u9810\u7d04=="

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 7
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

    .line 240
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "GetBookTimeSeg"

    .line 249
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetBookTimeSeg.aspx"

    .line 250
    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->url:Ljava/lang/String;

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "sid"

    .line 252
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "authid"

    .line 253
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v6, "authid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "seatid"

    .line 254
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    const-string v6, "seatInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bookdate"

    .line 255
    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "seatInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 256
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v2, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetBookTimeSeg map is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/BookAdd.aspx"

    .line 262
    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->url:Ljava/lang/String;

    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "sid"

    .line 264
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "authid"

    .line 265
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v6, "authid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "seatid"

    .line 266
    iget-object v5, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    const-string v6, "seatInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bookdate"

    .line 267
    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "seatInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "booktime"

    .line 268
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->getTimeSeqSting()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 269
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v2, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookAdd map is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    .line 277
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v0
.end method

.method private showList()V
    .locals 11

    const-string v0, "BookAdd"

    .line 147
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "rescode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    sget-object v2, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u9810\u7d04\u7d50\u679c"

    .line 153
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7d50\u675f"

    new-instance v2, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;)V

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-boolean v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->isPad:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 167
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v0

    .line 169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 174
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    mul-int v7, v3, v0

    add-int/2addr v7, v6

    .line 179
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeseg"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "stateinfo"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "state"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 183
    :cond_2
    sget-object v6, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "map is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_3
    if-ge v6, v0, :cond_5

    mul-int v7, v2, v0

    add-int/2addr v7, v6

    .line 193
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 194
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->serverDataList:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeseg"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "stateinfo"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "state"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 199
    :cond_5
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 202
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_6
    new-instance v0, Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;

    const v6, 0x7f0a00cd

    new-array v7, v5, [Ljava/lang/String;

    const-string v2, "zonename"

    aput-object v2, v7, v1

    new-array v8, v5, [I

    const v2, 0x7f0801d7

    aput v2, v8, v1

    move-object v2, v0

    move-object v3, p0

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;-><init>(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;

    .line 211
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;

    iget-boolean v1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->isPad:Z

    invoke-virtual {v0, v1}, Ltw/edu/kmu/adapter/SeatBookingView5L4TimeAdapter;->setPad(Z)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00c7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 58
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "seatInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 60
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->lv:Landroid/widget/ListView;

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->initBtn()V

    .line 64
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 65
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$GetServerDataInfo;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$1;)V

    .line 66
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

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

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 122
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 128
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->TAG:Ljava/lang/String;

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

.method public updateTimeSeq(Ljava/lang/String;Z)V
    .locals 2

    .line 332
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->timesegMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 334
    iget-object p2, p0, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;->timesegMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
