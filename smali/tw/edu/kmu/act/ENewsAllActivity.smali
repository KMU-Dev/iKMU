.class public Ltw/edu/kmu/act/ENewsAllActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "ENewsAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/ENewsAllActivity$getServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ENewsAllActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

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

    .line 26
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 32
    iput v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->CLOSE_PROGRESSBAR:I

    .line 107
    new-instance v0, Ltw/edu/kmu/act/ENewsAllActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ENewsAllActivity$2;-><init>(Ltw/edu/kmu/act/ENewsAllActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/ENewsAllActivity;)Landroid/widget/ListView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ENewsAllActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/ENewsAllActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/ENewsAllActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/ENewsAllActivity;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->handler:Landroid/os/Handler;

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

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 173
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    iget-object v2, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/ENewsAllActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    sget-object v3, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 179
    :goto_0
    sget-object v1, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 71
    iget-object v2, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "no"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "enewsID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/ENewsAllActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a004f

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "topic"

    aput-object v7, v6, v0

    const-string v0, "no"

    const/4 v7, 0x1

    aput-object v0, v6, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/ENewsAllActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ENewsAllActivity$1;-><init>(Ltw/edu/kmu/act/ENewsAllActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801d5
        0x7f080245
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a004e

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    sget-object v0, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/ENewsAllActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 51
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c00c0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsAllActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->display:Landroid/view/Display;

    const p1, 0x7f080125

    .line 55
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ENewsAllActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->lv:Landroid/widget/ListView;

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/act/ENewsAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c000e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->url:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 59
    new-instance p1, Ltw/edu/kmu/act/ENewsAllActivity$getServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/ENewsAllActivity$getServerData;-><init>(Ltw/edu/kmu/act/ENewsAllActivity;Ltw/edu/kmu/act/ENewsAllActivity$1;)V

    const/4 v1, 0x1

    .line 60
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/ENewsAllActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    sget-object p1, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 188
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 194
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 195
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 197
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 201
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 203
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 211
    sget-object v2, Ltw/edu/kmu/act/ENewsAllActivity;->TAG:Ljava/lang/String;

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
