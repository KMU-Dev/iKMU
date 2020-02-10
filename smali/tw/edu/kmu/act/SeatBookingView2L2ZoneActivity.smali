.class public Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView2L2ZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView2L2ZoneActivity"


# instance fields
.field public adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

.field private bookDateLimit:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field public itemmonth:Ljava/util/GregorianCalendar;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private lv_adapter:Landroid/widget/SimpleAdapter;

.field public month:Ljava/util/GregorianCalendar;

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

.field private todayYyyyMmDd:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private yyyymmdd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 214
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Landroid/widget/ListView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->yyyymmdd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->yyyymmdd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Landroid/os/Bundle;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->showList()V

    return-void
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->todayYyyyMmDd:Ljava/lang/String;

    return-object p0
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

    .line 190
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 199
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "locationid"

    .line 200
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "locationid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 201
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetZoneInfo.aspx"

    .line 203
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->url:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 208
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 8

    .line 135
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "zonename"

    aput-object v3, v6, v1

    new-array v7, v2, [I

    const v2, 0x7f0801c9

    aput v2, v7, v1

    const v5, 0x7f0a00c2

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv_adapter:Landroid/widget/SimpleAdapter;

    .line 142
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00bb

    return v0
.end method

.method public initCalendar()V
    .locals 10

    .line 253
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 254
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    .line 255
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->itemmonth:Ljava/util/GregorianCalendar;

    .line 257
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 258
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "-"

    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v7

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v4, v6, v8}, Ljava/util/Calendar;->set(III)V

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->items:Ljava/util/ArrayList;

    .line 266
    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bookDateLimit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v5, v0, :cond_0

    const/4 v0, 0x5

    .line 270
    invoke-virtual {v3, v0, v7}, Ljava/util/Calendar;->add(II)V

    .line 271
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 272
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/CalendarAdapter;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/CalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/GregorianCalendar;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    const v0, 0x7f0800f0

    .line 277
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 278
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ltw/edu/kmu/adapter/CalendarAdapter;->setItems(Ljava/util/ArrayList;)V

    const v1, 0x7f0801c7

    .line 281
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "yyyy MMMM"

    .line 282
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08014c

    .line 284
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 286
    new-instance v2, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080136

    .line 295
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 296
    new-instance v2, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$5;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bundle:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 75
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "globalVariable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "locationname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08011b

    .line 79
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->lv:Landroid/widget/ListView;

    .line 81
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->yyyymmdd:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->yyyymmdd:Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->todayYyyyMmDd:Ljava/lang/String;

    .line 86
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "globalVariable.systemInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    const-string v0, "bookdatelimit"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bookDateLimit:Ljava/lang/String;

    .line 90
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookDateLimit is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->bookDateLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->initCalendar()V

    .line 94
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 95
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$1;)V

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

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

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 107
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 113
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->TAG:Ljava/lang/String;

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

.method public refreshCalendar()V
    .locals 3

    const v0, 0x7f0801c7

    .line 371
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 372
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CalendarAdapter;->refreshDays()V

    .line 373
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CalendarAdapter;->notifyDataSetChanged()V

    const-string v1, "yyyy MMMM"

    .line 374
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setNextMonth()V
    .locals 5

    .line 346
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 347
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    return-void
.end method

.method protected setPreviousMonth()V
    .locals 5

    .line 356
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 357
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
