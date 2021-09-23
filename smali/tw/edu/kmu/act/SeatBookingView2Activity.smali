.class public Ltw/edu/kmu/act/SeatBookingView2Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView2Activity"


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

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x5

    .line 37
    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonIdAry:[I

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u67e5\u8a62\u9810\u7d04"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u9810\u7d04\u5e2d\u4f4d"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u67e5\u8a62\u8a18\u9ede"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "\u67e5\u8a62\u9ed1\u540d\u55ae"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "\u67e5\u8a62\u53ef\u9810\u7d04\u5ea7\u4f4d"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    .line 53
    iput v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->currentIndex:I

    .line 324
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView2Activity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView2Activity$4;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->handler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x7f080051
        0x7f08005b
        0x7f080060
        0x7f080061
        0x7f080064
    .end array-data
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView2Activity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView2Activity;)[I
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonIdAry:[I

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SeatBookingView2Activity;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->setBtnAction(I)V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView2Activity;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/SeatBookingView2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SeatBookingView2Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/SeatBookingView2Activity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/SeatBookingView2Activity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->showList()V

    return-void
.end method

.method private initBtn()V
    .locals 4

    .line 114
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView2Activity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView2Activity$2;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;)V

    const/4 v1, 0x0

    .line 133
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonIdAry:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/SeatBookingView2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v1

    .line 136
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initLogOutBtn()V
    .locals 3

    const v0, 0x7f08003f

    .line 87
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    .line 91
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x420c0000    # 35.0f

    .line 92
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070163

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "==\u767b\u51fa=="

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 99
    new-instance v1, Ltw/edu/kmu/act/SeatBookingView2Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView2Activity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

    .line 300
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 309
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 310
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetLocationInfo.aspx"

    .line 313
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->url:Ljava/lang/String;

    .line 314
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 318
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private setBtnAction(I)V
    .locals 3

    .line 145
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnAction start and index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 150
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2Activity;->TAG:Ljava/lang/String;

    const-string v0, "do not set btn action"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "\u67e5\u8a62\u9810\u7d04"

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "\u9810\u7d04\u5e2d\u4f4d"

    .line 164
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u67e5\u8a62\u8a18\u9ede"

    .line 171
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "\u67e5\u8a62\u9ed1\u540d\u55ae"

    .line 178
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView4Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v0, "\u67e5\u8a62\u53ef\u9810\u7d04\u5ea7\u4f4d"

    .line 185
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/SeatBookingView5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->finish()V

    .line 194
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->setBtnColor(I)V

    return-void
.end method

.method private setBtnColor(I)V
    .locals 3

    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 204
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const v2, 0x7f07013a

    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 209
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->buttonAry:[Landroid/widget/Button;

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

    .line 248
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->serverDataList:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->serverDataList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "locationname"

    aput-object v3, v6, v1

    new-array v7, v2, [I

    const v2, 0x7f0801d7

    aput v2, v7, v1

    const v5, 0x7f0a00c4

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 254
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView2Activity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView2Activity$3;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 367
    iget-boolean v0, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00cf

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00d0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const-string p1, "\u5e2d\u4f4d\u7ba1\u63a7"

    .line 63
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 65
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->lv:Landroid/widget/ListView;

    .line 67
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->initLogOutBtn()V

    .line 69
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->initBtn()V

    .line 71
    iget p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->currentIndex:I

    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->setBtnColor(I)V

    const p1, 0x7f0800fb

    .line 73
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0800fa

    .line 74
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    const/16 v1, 0x8

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 79
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;Ltw/edu/kmu/act/SeatBookingView2Activity$1;)V

    const/4 v0, 0x1

    .line 80
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2Activity;->TAG:Ljava/lang/String;

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

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 219
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 220
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 225
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 227
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView2Activity;->TAG:Ljava/lang/String;

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
