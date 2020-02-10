.class public Ltw/edu/kmu/act/SeatBookingView4Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView4Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView4Activity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView4Activity"


# instance fields
.field private buttonAry:[Landroid/widget/Button;

.field private buttonIdAry:[I

.field private currentIndex:I

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x5

    .line 35
    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    .line 37
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonIdAry:[I

    .line 39
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

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    .line 49
    iput v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->currentIndex:I

    .line 322
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView4Activity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView4Activity$4;-><init>(Ltw/edu/kmu/act/SeatBookingView4Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->handler:Landroid/os/Handler;

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

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView4Activity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 31
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView4Activity;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonIdAry:[I

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SeatBookingView4Activity;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->setBtnAction(I)V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView4Activity;)Landroid/widget/ListView;
    .locals 0

    .line 31
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/SeatBookingView4Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView4Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/SeatBookingView4Activity;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/SeatBookingView4Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->showList()V

    return-void
.end method

.method private initBtn()V
    .locals 4

    .line 112
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView4Activity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView4Activity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView4Activity;)V

    const/4 v1, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonIdAry:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/SeatBookingView4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v1

    .line 135
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

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

    .line 85
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    .line 88
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x420c0000    # 35.0f

    .line 89
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070163

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "==\u767b\u51fa=="

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 96
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView4Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView4Activity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView4Activity;)V

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

    .line 298
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 307
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authid"

    .line 308
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v4, "authid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 309
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetBlackList.aspx"

    .line 311
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->url:Ljava/lang/String;

    .line 312
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 316
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private setBtnAction(I)V
    .locals 3

    .line 147
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView4Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnAction start and index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 151
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView4Activity;->TAG:Ljava/lang/String;

    const-string v0, "do not set btn action"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "\u67e5\u8a62\u9810\u7d04"

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "\u9810\u7d04\u5e2d\u4f4d"

    .line 163
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "\u67e5\u8a62\u8a18\u9ede"

    .line 170
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "\u67e5\u8a62\u9ed1\u540d\u55ae"

    .line 176
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "\u67e5\u8a62\u53ef\u9810\u7d04\u5ea7\u4f4d"

    .line 182
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->finish()V

    .line 190
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->setBtnColor(I)V

    return-void
.end method

.method private setBtnColor(I)V
    .locals 3

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 202
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 206
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->buttonAry:[Landroid/widget/Button;

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
    .locals 11

    .line 244
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverDataList:Ljava/util/ArrayList;

    .line 246
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title1"

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed1\u540d\u55ae\u7ba1\u5236\u958b\u59cb\u6642\u9593:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "blacksdate"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title2"

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed1\u540d\u55ae\u7ba1\u5236\u5230\u671f\u6642\u9593:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "blackedate"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title3"

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed1\u540d\u55ae\u6642\u9593:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mdate"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v7, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->serverDataList:Ljava/util/ArrayList;

    const v8, 0x7f0a00c4

    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const-string v3, "title1"

    aput-object v3, v9, v1

    const/4 v1, 0x1

    const-string v3, "title2"

    aput-object v3, v9, v1

    const/4 v1, 0x2

    const-string v3, "title3"

    aput-object v3, v9, v1

    new-array v10, v2, [I

    fill-array-data v10, :array_0

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 261
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView4Activity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView4Activity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView4Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c9
        0x7f0801dc
        0x7f080202
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 362
    iget-boolean v0, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00cd

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00ce

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 53
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView4Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const-string p1, "\u5e2d\u4f4d\u7ba1\u63a7"

    .line 59
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08011b

    .line 61
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->lv:Landroid/widget/ListView;

    .line 63
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->initLogOutBtn()V

    .line 65
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->initBtn()V

    .line 67
    iget p1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->currentIndex:I

    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->setBtnColor(I)V

    const p1, 0x7f0800f1

    .line 69
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView4Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f0

    .line 70
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    const/16 v1, 0x8

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView4Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 75
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView4Activity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView4Activity;Ltw/edu/kmu/act/SeatBookingView4Activity$1;)V

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView4Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView4Activity;->TAG:Ljava/lang/String;

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

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 216
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 217
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 218
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 222
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView4Activity;->TAG:Ljava/lang/String;

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
