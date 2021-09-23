.class public Ltw/edu/kmu/act/TBLTpListActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TBLTpListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;,
        Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;,
        Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLTpListActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private examDataList:Ljava/util/ArrayList;
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

.field private examMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imageUrl:Ljava/lang/String;

.field private lv:Landroid/widget/ListView;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

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

.field private sharedData:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 55
    iput v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->CLOSE_PROGRESSBAR:I

    const-string v0, "https://etbl.kmu.edu.tw/tblapi/tbl/download?file="

    .line 59
    iput-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->imageUrl:Ljava/lang/String;

    .line 96
    new-instance v0, Ltw/edu/kmu/act/TBLTpListActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLTpListActivity$2;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TBLTpListActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLTpListActivity;->showList()V

    return-void
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 49
    iget-object p0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/TBLTpListActivity;)Landroid/os/Bundle;
    .locals 0

    .line 49
    iget-object p0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/TBLTpListActivity;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iget-object p0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/TBLTpListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->examDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->examDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private showList()V
    .locals 8

    .line 132
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLTpListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/TBLTpListActivity;->serverDataList:Ljava/util/ArrayList;

    const v4, 0x7f0a00dc

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "payDate"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "amount"

    aput-object v7, v5, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 149
    iget-object v1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/TBLTpListActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLTpListActivity$3;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLTpListActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d9
        0x7f0801f0
    .end array-data
.end method


# virtual methods
.method public getExamData(Ljava/lang/String;)V
    .locals 3

    .line 355
    new-instance v0, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$1;)V

    const/4 v1, 0x1

    .line 356
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLTpListActivity$GetExamData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00dd

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    sget-object v0, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-boolean p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    const-string p1, "\u4f5c\u7b54\u8a18\u9304"

    goto :goto_0

    :cond_0
    const-string p1, "\u8acb\u9078\u64c7\u8a66\u5377"

    :goto_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/TBLTpListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f080125

    .line 73
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->lv:Landroid/widget/ListView;

    .line 75
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLTpListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->bundle:Landroid/os/Bundle;

    const p1, 0x7f08016d

    .line 80
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLTpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/TBLTpListActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v0, Ltw/edu/kmu/act/TBLTpListActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLTpListActivity$1;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 90
    sget-object p1, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 681
    sget-object v0, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    .line 683
    new-instance v0, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$1;)V

    const/4 v1, 0x0

    .line 684
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLTpListActivity$GetTpListData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 282
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 283
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 285
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 288
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 292
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    sget-object v1, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseClassList Error:"

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

.method public parseExamMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 634
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 635
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 643
    sget-object v1, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseExamMap Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 656
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 657
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 658
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 659
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 661
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 662
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 663
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 664
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 666
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 672
    sget-object p2, Ltw/edu/kmu/act/TBLTpListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseList Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public show99View()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 364
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 365
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#FFFFFF"

    .line 366
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 368
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x7f0700f4

    .line 370
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 373
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v7, 0x2

    .line 374
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v8, -0x1000000

    .line 375
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    const-string v11, "ansTime"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLTpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/high16 v10, 0x41a00000    # 20.0f

    .line 378
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v11, 0x0

    .line 379
    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 383
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v12, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v14, :cond_0

    const-string v14, "teafEnam"

    goto :goto_0

    :cond_0
    const-string v14, "teafNam"

    :goto_0
    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLTpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0700f9

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 386
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v12, v13, v13, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 387
    invoke-virtual {v9, v12, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 389
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Ltw/edu/kmu/act/TBLTpListActivity;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x32

    div-int/lit8 v10, v10, 0x64

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    .line 397
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 398
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 400
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Q:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    const-string v15, "description"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v15, v0, Ltw/edu/kmu/act/TBLTpListActivity;->display:Landroid/view/Display;

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v15

    mul-int/lit8 v15, v15, 0x1e

    div-int/lit8 v15, v15, 0x64

    invoke-direct {v14, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 406
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 407
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 409
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 411
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v14, :cond_1

    const-string v14, "Score"

    goto :goto_1

    :cond_1
    const-string v14, "\u5f97\u5206:"

    :goto_1
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examMap:Ljava/util/HashMap;

    const-string v15, "scoreDesc"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 415
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 420
    :goto_2
    iget-object v5, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 421
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 422
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 423
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 424
    iget-object v10, v0, Ltw/edu/kmu/act/TBLTpListActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v14, "questionType"

    .line 425
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 426
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    invoke-virtual {v15, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "description"

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "timer"

    .line 433
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 434
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x5

    .line 435
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v15, 0x40a00000    # 5.0f

    .line 436
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 437
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 438
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 439
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 440
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 443
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v13, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v13, :cond_2

    const-string v13, "  Score"

    goto :goto_3

    :cond_2
    const-string v13, "  \u5f97\u5206:"

    :goto_3
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "scoreDesc"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0700f6

    .line 446
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 447
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "imgPath"

    .line 449
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 450
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 451
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v13, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 452
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 453
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 455
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Ltw/edu/kmu/act/TBLTpListActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    .line 457
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 458
    new-instance v15, Ltw/edu/kmu/act/TBLTpListActivity$4;

    invoke-direct {v15, v0, v2}, Ltw/edu/kmu/act/TBLTpListActivity$4;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    new-instance v15, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-direct {v15, v4, v11, v0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v11, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v11, v16

    const/4 v13, 0x1

    aput-object v2, v11, v13

    invoke-virtual {v15, v11}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 469
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 471
    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v4, :cond_3

    const-string v4, "Click image to enlarge"

    goto :goto_4

    :cond_3
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 474
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 475
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_4
    const/4 v13, 0x1

    :goto_5
    const-string v2, "2"

    .line 479
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 481
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGroup"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 485
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 486
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 487
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 488
    new-instance v11, Landroid/widget/RadioButton;

    invoke-direct {v11, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "radioButton"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v11, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 491
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f08004e

    const-string v15, "optKey"

    .line 492
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    const/4 v14, 0x0

    .line 493
    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v14, "correct"

    .line 494
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 495
    invoke-virtual {v2, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 498
    :cond_5
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 500
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 501
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 502
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 503
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 504
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 505
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v4, :cond_6

    const-string v4, "My ans:"

    goto :goto_7

    :cond_6
    const-string v4, "\u6211\u7684\u7b54\u6848:"

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "myAnswer"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_7
    const-string v2, "3"

    .line 511
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 514
    new-instance v2, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 515
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 516
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 517
    new-instance v11, Landroid/widget/CheckBox;

    invoke-direct {v11, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 519
    invoke-virtual {v11, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 520
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f08004e

    const-string v15, "optKey"

    .line 521
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v14, "correct"

    .line 522
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v6, 0x0

    .line 523
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 524
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 526
    :cond_8
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 527
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 528
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 529
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 530
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 531
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 532
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v4, :cond_9

    const-string v4, "My ans:"

    goto :goto_9

    :cond_9
    const-string v4, "\u6211\u7684\u7b54\u6848:"

    :goto_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "myAnswer"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_a
    const-string v2, "4"

    .line 538
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 540
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 541
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 542
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 543
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 544
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 545
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 546
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 547
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v4, "edit1"

    .line 548
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 549
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextColor(I)V

    const v4, 0x7f0700f5

    .line 550
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v4, "myAnswer"

    .line 552
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 556
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 557
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 558
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 559
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 560
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 561
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/TBLTpListActivity;->isEnglish:Z

    if-eqz v6, :cond_b

    const-string v6, "Right ans:"

    goto :goto_a

    :cond_b
    const-string v6, "\u6a19\u6e96\u7b54\u6848:"

    :goto_a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stdAnswer"

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, ""

    const-string v6, "stdAnswer"

    .line 565
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 566
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v3, 0x0

    .line 570
    :cond_d
    :goto_c
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v9

    const/4 v2, 0x1

    const v4, 0x7f0700f4

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 573
    :cond_e
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 574
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 577
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 580
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700f3

    .line 581
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 583
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 584
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 587
    new-instance v3, Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;

    invoke-direct {v3, v0}, Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;)V

    const-string v4, "99"

    .line 588
    invoke-virtual {v3, v0, v1, v4}, Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 589
    new-instance v1, Ltw/edu/kmu/act/TBLTpListActivity$5;

    invoke-direct {v1, v0, v3}, Ltw/edu/kmu/act/TBLTpListActivity$5;-><init>(Ltw/edu/kmu/act/TBLTpListActivity;Ltw/edu/kmu/act/TBLTpListActivity$ViewDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
