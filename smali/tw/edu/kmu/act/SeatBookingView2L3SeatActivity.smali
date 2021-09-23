.class public Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView2L3SeatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$GetServerDataInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView2L3SeatActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;

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

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 200
    new-instance v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$102(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->showList()V

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

    .line 174
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 183
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authid"

    .line 184
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    const-string v4, "authid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "zoneid"

    .line 185
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "zoneid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bookdate"

    .line 186
    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "bookdate"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "restype"

    const-string v3, "json"

    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/GetSeatInfo.aspx"

    .line 189
    iput-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->url:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 194
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 11

    .line 100
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "resdata"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->praseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-boolean v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->isPad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 103
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v0

    .line 104
    sget-object v3, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverDataList size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and rows is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_1

    mul-int v7, v3, v0

    add-int/2addr v7, v6

    .line 116
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 117
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

    const-string v10, "seatid"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "seatname"

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

    const-string v7, "-"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    const-string v10, "bookdate"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_3
    if-ge v6, v0, :cond_4

    mul-int v7, v2, v0

    add-int/2addr v7, v6

    .line 127
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_3

    .line 128
    iget-object v8, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->serverDataList:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "seatid"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "seatname"

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

    const-string v7, "-"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    const-string v10, "bookdate"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 134
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 136
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_5
    new-instance v0, Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;

    const v6, 0x7f0a00c1

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

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;

    .line 145
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->lv_adapter:Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;

    iget-boolean v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->isPad:Z

    invoke-virtual {v0, v1}, Ltw/edu/kmu/adapter/SeatBookingView2L3SeatAdapter;->setPad(Z)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00bd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    .line 48
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 50
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 52
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->lv:Landroid/widget/ListView;

    const p1, 0x7f0800fb

    .line 54
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0800fa

    .line 55
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    const/16 v1, 0x8

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 60
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$GetServerDataInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$1;)V

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->TAG:Ljava/lang/String;

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

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 71
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 77
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    sget-object v1, Ltw/edu/kmu/act/SeatBookingView2L3SeatActivity;->TAG:Ljava/lang/String;

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
