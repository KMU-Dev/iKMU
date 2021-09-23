.class public Ltw/edu/kmu/act/EvlTAStatDetailActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "EvlTAStatDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;,
        Ltw/edu/kmu/act/EvlTAStatDetailActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlTAStatDetailActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

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

.field private sharedData:Landroid/content/SharedPreferences;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 45
    iput v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->CLOSE_PROGRESSBAR:I

    .line 87
    new-instance v0, Ltw/edu/kmu/act/EvlTAStatDetailActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$1;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->showList()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)Landroid/widget/ListView;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/EvlTAStatDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->handler:Landroid/os/Handler;

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 200
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "teafno"

    .line 201
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "yearsem"

    .line 202
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "semCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seqno"

    .line 203
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "seqno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v2, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->url:Ljava/lang/String;

    const-string v4, "post"

    invoke-virtual {v2, v3, v1, v4}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    sget-object v3, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 210
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 8

    .line 123
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 128
    iget-object v2, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, ""

    const-string v4, "openQ1"

    .line 130
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "openQ1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, "openQ2"

    .line 134
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "openQ2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v4, "openQ3"

    .line 138
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "openQ3"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v4, "title3"

    .line 142
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 145
    :cond_4
    new-instance v1, Ltw/edu/kmu/adapter/Evl4TAStatDetailListViewAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a0060

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "title11"

    aput-object v3, v6, v0

    const-string v0, "title12"

    const/4 v3, 0x1

    aput-object v0, v6, v3

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/Evl4TAStatDetailListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 152
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/EvlTAStatDetailActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$2;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f0801d9
        0x7f0801dd
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0061

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    sget-object v0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f080125

    .line 62
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->lv:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0019

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->bundle:Landroid/os/Bundle;

    const p1, 0x7f0801ea

    .line 69
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 70
    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Average"

    goto :goto_0

    :cond_0
    const-string v1, "\u5e73\u5747"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080210

    .line 72
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 73
    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "Open questions"

    goto :goto_1

    :cond_1
    const-string v1, "\u958b\u653e\u554f\u984c"

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 78
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "chineseCo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 80
    new-instance p1, Ltw/edu/kmu/act/EvlTAStatDetailActivity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;Ltw/edu/kmu/act/EvlTAStatDetailActivity$1;)V

    const/4 v1, 0x1

    .line 81
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    sget-object p1, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 341
    sget-object v0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method

.method public readSharedPreferencesData()Ljava/util/ArrayList;
    .locals 8
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

    .line 220
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 226
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 227
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 228
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 233
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 235
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    sget-object v2, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public showScoreView(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    new-instance v0, Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;)V

    const/16 v1, 0xa

    .line 254
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 255
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const-string v3, "layout_inflater"

    .line 256
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/EvlTAStatDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0a005f

    const/4 v5, 0x0

    .line 257
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 259
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "score"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    aget v7, v2, v4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 263
    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v8, ""

    .line 264
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v5, ""

    .line 265
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    .line 266
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#00FFFFFF"

    .line 267
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v5, "#00FFFFFF"

    .line 268
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 270
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v4, v6

    goto :goto_0

    .line 275
    :cond_1
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 276
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 279
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700f3

    .line 283
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 284
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 285
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f080051

    .line 289
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 290
    new-instance v3, Ltw/edu/kmu/act/EvlTAStatDetailActivity$3;

    invoke-direct {v3, p0, v0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$3;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "00"

    .line 298
    invoke-virtual {v0, p0, v1, v2}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlTAStatDetailActivity$4;-><init>(Ltw/edu/kmu/act/EvlTAStatDetailActivity;Ltw/edu/kmu/act/EvlTAStatDetailActivity$ViewDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801d7
        0x7f0801ea
        0x7f080210
        0x7f08021c
        0x7f080226
        0x7f08022b
        0x7f080230
        0x7f080232
        0x7f080233
        0x7f0801d8
    .end array-data

    :array_1
    .array-data 4
        0x7f0800b5
        0x7f0800b7
        0x7f0800b8
        0x7f0800b9
        0x7f0800ba
        0x7f0800bb
        0x7f0800bc
        0x7f0800bd
        0x7f0800be
        0x7f0800b6
    .end array-data
.end method
