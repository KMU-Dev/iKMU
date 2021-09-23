.class public Ltw/edu/kmu/act/BusInfoListActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "BusInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BusInfoListActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private final CLOSE_TIMER:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private delayTime:J

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

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

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 39
    iput v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->CLOSE_PROGRESSBAR:I

    const/16 v0, 0x14

    .line 41
    iput v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->CLOSE_TIMER:I

    const-wide/32 v0, 0xea60

    .line 47
    iput-wide v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->delayTime:J

    .line 135
    new-instance v0, Ltw/edu/kmu/act/BusInfoListActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/BusInfoListActivity$1;-><init>(Ltw/edu/kmu/act/BusInfoListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    .line 250
    new-instance v0, Ltw/edu/kmu/act/BusInfoListActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/BusInfoListActivity$2;-><init>(Ltw/edu/kmu/act/BusInfoListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/BusInfoListActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->showList()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/BusInfoListActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->notifyAdapterData()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Ltw/edu/kmu/act/BusInfoListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/BusInfoListActivity;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->delayTime:J

    return-wide v0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/BusInfoListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private notifyAdapterData()V
    .locals 7

    .line 106
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 112
    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    .line 114
    :goto_1
    iget-object v4, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 116
    iget-object v4, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "name"

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "time"

    const-string v6, "time"

    .line 120
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void

    .line 107
    :cond_4
    :goto_2
    invoke-direct {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->showList()V

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

    .line 221
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    .line 232
    iget-object v3, p0, Ltw/edu/kmu/act/BusInfoListActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "goBack"

    .line 233
    iget-object v3, p0, Ltw/edu/kmu/act/BusInfoListActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "goBack"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/BusInfoListActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 239
    sget-object v2, Ltw/edu/kmu/act/BusInfoListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 14

    .line 78
    new-instance v11, Ltw/edu/kmu/adapter/BusListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->serverDataList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a002f

    const v3, 0x7f0a002f

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0030

    const v3, 0x7f0a0030

    :goto_0
    const/4 v12, 0x4

    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "name"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "time"

    aput-object v5, v4, v0

    const-string v0, "pic"

    const/4 v13, 0x2

    aput-object v0, v4, v13

    const/4 v0, 0x3

    const-string v5, "pic"

    aput-object v5, v4, v0

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    const/16 v9, 0x3c

    const/4 v10, 0x5

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/BusListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    iput-object v11, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 89
    new-array v0, v13, [I

    fill-array-data v0, :array_1

    .line 90
    new-array v1, v12, [I

    fill-array-data v1, :array_2

    .line 93
    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    check-cast v2, Ltw/edu/kmu/adapter/BusListViewAdapter;

    const v3, 0x7f07013b

    invoke-virtual {v2, v3}, Ltw/edu/kmu/adapter/BusListViewAdapter;->setNoImageID(I)V

    .line 94
    iget-object v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    check-cast v2, Ltw/edu/kmu/adapter/BusListViewAdapter;

    invoke-virtual {v2, v0}, Ltw/edu/kmu/adapter/BusListViewAdapter;->setListTextColor([I)V

    .line 95
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    check-cast v0, Ltw/edu/kmu/adapter/BusListViewAdapter;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/adapter/BusListViewAdapter;->setListTextPadding([I)V

    .line 97
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801d5
        0x7f0800aa
        0x7f080109
        0x7f08010a
    .end array-data

    :array_1
    .array-data 4
        0x7f0500b8
        0x7f05001e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0031

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->bundle:Landroid/os/Bundle;

    .line 54
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->url:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusInfoListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08008a

    .line 58
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusInfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->lv:Landroid/widget/ListView;

    .line 61
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 62
    new-instance p1, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;-><init>(Ltw/edu/kmu/act/BusInfoListActivity;Ltw/edu/kmu/act/BusInfoListActivity$1;)V

    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusInfoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->delayTime:J

    .line 67
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    iget-wide v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->delayTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 268
    sget-object v0, Ltw/edu/kmu/act/BusInfoListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 286
    sget-object v0, Ltw/edu/kmu/act/BusInfoListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 276
    sget-object v0, Ltw/edu/kmu/act/BusInfoListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity;->updateTimer:Ljava/lang/Runnable;

    iget-wide v2, p0, Ltw/edu/kmu/act/BusInfoListActivity;->delayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method
