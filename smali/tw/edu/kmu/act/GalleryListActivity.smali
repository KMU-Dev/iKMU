.class public Ltw/edu/kmu/act/GalleryListActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "GalleryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/GalleryListActivity$getServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryListActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private newServerDataList:Ljava/util/ArrayList;
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

    .line 27
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->CLOSE_PROGRESSBAR:I

    .line 114
    new-instance v0, Ltw/edu/kmu/act/GalleryListActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/GalleryListActivity$2;-><init>(Ltw/edu/kmu/act/GalleryListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/GalleryListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 27
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryListActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/GalleryListActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryListActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/GalleryListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryListActivity;->newServerDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/GalleryListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryListActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/GalleryListActivity;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryListActivity;->handler:Landroid/os/Handler;

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

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryListActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryListActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryListActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 182
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/GalleryListActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    sget-object v3, Ltw/edu/kmu/act/GalleryListActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 189
    :catch_1
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v2
.end method

.method private showList()V
    .locals 9

    const v0, 0x7f080255

    .line 65
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->lv:Landroid/widget/ListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryListActivity;->newServerDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryListActivity;->newServerDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 70
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "picList"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v4, "count"

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Ltw/edu/kmu/act/GalleryListActivity;->isEnglish:Z

    if-eqz v6, :cond_0

    const-string v6, "Number of exhibition pictures:"

    goto :goto_1

    :cond_0
    const-string v6, "\u5c55\u89bd\u5716\u7247\u6578\u91cf:"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 74
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/GalleryListActivity;->newServerDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a006d

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    iget-object v7, p0, Ltw/edu/kmu/act/GalleryListActivity;->currentLocale:Ljava/lang/String;

    const-string v8, "en"

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ename"

    goto :goto_3

    :cond_2
    const-string v7, "name"

    :goto_3
    aput-object v7, v6, v0

    const-string v0, "count"

    const/4 v7, 0x1

    aput-object v0, v6, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 85
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/GalleryListActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryListActivity$1;-><init>(Ltw/edu/kmu/act/GalleryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0800f7
        0x7f0800c6
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00e7

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/GalleryListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryListActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f0c00c2

    .line 48
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/GalleryListActivity;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c001a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryListActivity;->url:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 53
    new-instance p1, Ltw/edu/kmu/act/GalleryListActivity$getServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/GalleryListActivity$getServerData;-><init>(Ltw/edu/kmu/act/GalleryListActivity;Ltw/edu/kmu/act/GalleryListActivity$1;)V

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/GalleryListActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 196
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryListActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/GalleryListActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 202
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 203
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 204
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 205
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 206
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 209
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    sget-object v2, Ltw/edu/kmu/act/GalleryListActivity;->TAG:Ljava/lang/String;

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
