.class public Ltw/edu/kmu/act/SeatBookingView5Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView5Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView5Activity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView5Activity"


# instance fields
.field public adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

.field private bookDateLimit:Ljava/lang/String;

.field private buttonAry:[Landroid/widget/Button;

.field private buttonIdAry:[I

.field private currentIndex:I

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

.field public month:Ljava/util/GregorianCalendar;

.field private queryNameAry:[Ljava/lang/String;

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
    .locals 3

    .line 41
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x5

    .line 51
    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    .line 53
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonIdAry:[I

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u67e5\u8a62\u9810\u7d04"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u9810\u7d04\u5e2d\u4f4d"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u67e5\u8a62\u8a18\u9ede"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u67e5\u8a62\u9ed1\u540d\u55ae"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u67e5\u8a62\u53ef\u9810\u7d04\u5ea7\u4f4d"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    .line 65
    iput v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->currentIndex:I

    .line 375
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView5Activity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$4;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->handler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x7f080052
        0x7f08005c
        0x7f080061
        0x7f080062
        0x7f080065
    .end array-data
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->todayYyyyMmDd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView5Activity;)[I
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonIdAry:[I

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SeatBookingView5Activity;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->setBtnAction(I)V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView5Activity;)Landroid/widget/ListView;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/SeatBookingView5Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->yyyymmdd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/SeatBookingView5Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->yyyymmdd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/SeatBookingView5Activity;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/SeatBookingView5Activity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->showList()V

    return-void
.end method

.method private initBtn()V
    .locals 4

    .line 141
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView5Activity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonIdAry:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v1

    .line 164
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initLogOutBtn()V
    .locals 3

    const v0, 0x7f080040

    .line 114
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 116
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    .line 117
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x420c0000    # 35.0f

    .line 118
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070163

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "==\u767b\u51fa=="

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 125
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView5Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 347
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 356
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authid"

    .line 357
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v4, "authid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bookdate"

    .line 358
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->yyyymmdd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "shour"

    .line 359
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    const-string v4, "defbookshour"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ehour"

    .line 360
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    const-string v4, "defbookehour"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 361
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v2, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/BookSeatQuery.aspx"

    .line 364
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->url:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 369
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private setBtnAction(I)V
    .locals 3

    .line 176
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnAction start and index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 180
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    const-string v0, "do not set btn action"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "\u67e5\u8a62\u9810\u7d04"

    .line 186
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "\u9810\u7d04\u5e2d\u4f4d"

    .line 192
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "\u67e5\u8a62\u8a18\u9ede"

    .line 199
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "\u67e5\u8a62\u9ed1\u540d\u55ae"

    .line 205
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView4Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v0, "\u67e5\u8a62\u53ef\u9810\u7d04\u5ea7\u4f4d"

    .line 211
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    :goto_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->setBtnColor(I)V

    return-void
.end method

.method private setBtnColor(I)V
    .locals 3

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 231
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 235
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const v2, 0x7f070139

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showList()V
    .locals 8

    .line 271
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverDataList:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 279
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "locationname"

    .line 281
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "locationname"

    .line 283
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "locationname"

    const-string v7, "locationname"

    .line 287
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v5, 0x7f0a00cc

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "locationname"

    aput-object v3, v6, v1

    new-array v7, v2, [I

    const v2, 0x7f0801c9

    aput v2, v7, v1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 301
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView5Activity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 505
    iget-boolean v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00cd

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00ce

    :goto_0
    return v0
.end method

.method public initCalendar()V
    .locals 10

    .line 414
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 415
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    .line 416
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->itemmonth:Ljava/util/GregorianCalendar;

    .line 418
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 419
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "-"

    .line 424
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

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->items:Ljava/util/ArrayList;

    .line 427
    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->bookDateLimit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v5, v0, :cond_0

    const/4 v0, 0x5

    .line 431
    invoke-virtual {v3, v0, v7}, Ljava/util/Calendar;->add(II)V

    .line 432
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 433
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/CalendarAdapter;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/CalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/GregorianCalendar;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    const v0, 0x7f0800f0

    .line 438
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 439
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ltw/edu/kmu/adapter/CalendarAdapter;->setItems(Ljava/util/ArrayList;)V

    const v1, 0x7f0801c7

    .line 442
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "yyyy MMMM"

    .line 443
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08014c

    .line 445
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 447
    new-instance v2, Ltw/edu/kmu/act/SeatBookingView5Activity$5;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$5;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080136

    .line 456
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 457
    new-instance v2, Ltw/edu/kmu/act/SeatBookingView5Activity$6;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$6;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView5Activity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView5Activity$7;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const-string p1, "\u5e2d\u4f4d\u7ba1\u63a7"

    .line 81
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08011b

    .line 83
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->lv:Landroid/widget/ListView;

    .line 85
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->initLogOutBtn()V

    .line 87
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->initBtn()V

    .line 89
    iget p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->currentIndex:I

    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->setBtnColor(I)V

    .line 91
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->yyyymmdd:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->yyyymmdd:Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->todayYyyyMmDd:Ljava/lang/String;

    .line 96
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "globalVariable.systemInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->systemInfo:Ljava/util/HashMap;

    const-string v0, "bookdatelimit"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->bookDateLimit:Ljava/lang/String;

    .line 100
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookDateLimit is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->bookDateLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->initCalendar()V

    .line 104
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 105
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView5Activity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView5Activity;Ltw/edu/kmu/act/SeatBookingView5Activity$1;)V

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

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

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 245
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 246
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 248
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 251
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 253
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView5Activity;->TAG:Ljava/lang/String;

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

    .line 535
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 536
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CalendarAdapter;->refreshDays()V

    .line 537
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->adapter:Ltw/edu/kmu/adapter/CalendarAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CalendarAdapter;->notifyDataSetChanged()V

    const-string v1, "yyyy MMMM"

    .line 538
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setNextMonth()V
    .locals 5

    .line 510
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 511
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    return-void
.end method

.method protected setPreviousMonth()V
    .locals 5

    .line 520
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 521
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5Activity;->month:Ljava/util/GregorianCalendar;

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

    .line 529
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
