.class public Ltw/edu/kmu/act/SafetyActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SafetyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SafetyActivity$getServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SafetyActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private matcher:Ljava/util/regex/Matcher;

.field private phonePattern1:Ljava/util/regex/Pattern;

.field private phonePattern2:Ljava/util/regex/Pattern;

.field private progressbar:Landroid/widget/ProgressBar;

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

    const-string v0, "(\\d\\d\\d?)-?(\\d?\\d{7})"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->phonePattern1:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{9,10})"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->phonePattern2:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    .line 53
    iput v0, p0, Ltw/edu/kmu/act/SafetyActivity;->CLOSE_PROGRESSBAR:I

    .line 216
    new-instance v0, Ltw/edu/kmu/act/SafetyActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SafetyActivity$2;-><init>(Ltw/edu/kmu/act/SafetyActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/SafetyActivity;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SafetyActivity;)Landroid/widget/ListView;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/SafetyActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Ltw/edu/kmu/act/SafetyActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Matcher;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/SafetyActivity;->matcher:Ljava/util/regex/Matcher;

    return-object p0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/SafetyActivity;Ljava/util/regex/Matcher;)Ljava/util/regex/Matcher;
    .locals 0

    .line 38
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->matcher:Ljava/util/regex/Matcher;

    return-object p1
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/regex/Pattern;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/SafetyActivity;->phonePattern1:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SafetyActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ltw/edu/kmu/act/SafetyActivity;->showList()V

    return-void
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/SafetyActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/SafetyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    invoke-direct {p0}, Ltw/edu/kmu/act/SafetyActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/SafetyActivity;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Ltw/edu/kmu/act/SafetyActivity;->handler:Landroid/os/Handler;

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

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 261
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 262
    iget-object v2, p0, Ltw/edu/kmu/act/SafetyActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SafetyActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    sget-object v3, Ltw/edu/kmu/act/SafetyActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 267
    :catch_1
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v2
.end method

.method private showList()V
    .locals 9

    .line 81
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "null"

    const-string v3, "tel"

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tel"

    const-string v3, ""

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const v0, 0x7f080125

    .line 87
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SafetyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->lv:Landroid/widget/ListView;

    .line 88
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/SafetyActivity;->serverDataList:Ljava/util/ArrayList;

    const v4, 0x7f0a00b7

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Ltw/edu/kmu/act/SafetyActivity;->currentLocale:Ljava/lang/String;

    const-string v8, "en"

    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ename"

    goto :goto_1

    :cond_2
    const-string v7, "name"

    :goto_1
    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tel"

    aput-object v7, v5, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 93
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SafetyActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SafetyActivity$1;-><init>(Ltw/edu/kmu/act/SafetyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :array_0
    .array-data 4
        0x7f080124
        0x7f0801bf
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00b4

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/SafetyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c00c8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SafetyActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080159

    .line 66
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SafetyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 67
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0045

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity;->url:Ljava/lang/String;

    .line 69
    new-instance p1, Ltw/edu/kmu/act/SafetyActivity$getServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/SafetyActivity$getServerData;-><init>(Ltw/edu/kmu/act/SafetyActivity;Ltw/edu/kmu/act/SafetyActivity$1;)V

    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/SafetyActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 274
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/SafetyActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 280
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 281
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 282
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 283
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 284
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 287
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    sget-object v2, Ltw/edu/kmu/act/SafetyActivity;->TAG:Ljava/lang/String;

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
