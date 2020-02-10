.class public Ltw/edu/kmu/act/TBLCourseListActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TBLCourseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TBLCourseListActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLCourseListActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private dialog4Switch:Landroid/app/AlertDialog;

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

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 35
    iput v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->CLOSE_PROGRESSBAR:I

    .line 134
    new-instance v0, Ltw/edu/kmu/act/TBLCourseListActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLCourseListActivity$3;-><init>(Ltw/edu/kmu/act/TBLCourseListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/TBLCourseListActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->showList()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TBLCourseListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/TBLCourseListActivity;Ljava/util/HashMap;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->showSwitchDialog(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/TBLCourseListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/TBLCourseListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/TBLCourseListActivity;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->handler:Landroid/os/Handler;

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

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 237
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    iget-object v2, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    sget-object v3, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
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

    .line 244
    :goto_0
    sget-object v1, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 8

    .line 171
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverDataList:Ljava/util/ArrayList;

    const v4, 0x7f0a001c

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->currentLocale:Ljava/lang/String;

    const-string v7, "en"

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "englishco"

    goto :goto_0

    :cond_1
    const-string v6, "chineseco"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v1, [I

    const v1, 0x7f0801c7

    aput v1, v6, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 181
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/TBLCourseListActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLCourseListActivity$4;-><init>(Ltw/edu/kmu/act/TBLCourseListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private showSwitchDialog(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 72
    new-array v1, v0, [Ljava/lang/String;

    iget-boolean v2, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Answering in course"

    goto :goto_0

    :cond_0
    const-string v2, "\u8ab2\u4e2d\u7b54\u984c"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-boolean v3, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "My group"

    goto :goto_1

    :cond_1
    const-string v3, "\u6211\u7684\u5206\u7d44"

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "Answer history"

    goto :goto_2

    :cond_2
    const-string v3, "\u4f5c\u7b54\u8a18\u9304"

    :goto_2
    aput-object v3, v1, v2

    .line 73
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a004d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-boolean v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "englishco"

    goto :goto_3

    :cond_3
    const-string v0, "chineseco"

    .line 75
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v3, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz v3, :cond_4

    const-string v3, "Cancel"

    goto :goto_4

    :cond_4
    const-string v3, "\u53d6\u6d88"

    :goto_4
    new-instance v4, Ltw/edu/kmu/act/TBLCourseListActivity$1;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/TBLCourseListActivity$1;-><init>(Ltw/edu/kmu/act/TBLCourseListActivity;)V

    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v3, 0x7f080122

    .line 86
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 87
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    new-instance v1, Ltw/edu/kmu/act/TBLCourseListActivity$2;

    invoke-direct {v1, p0, p1, v0}, Ltw/edu/kmu/act/TBLCourseListActivity$2;-><init>(Ltw/edu/kmu/act/TBLCourseListActivity;Ljava/util/HashMap;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iput-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->dialog4Switch:Landroid/app/AlertDialog;

    .line 129
    iget-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->dialog4Switch:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a001d

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    sget-object v0, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->bundle:Landroid/os/Bundle;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/TBLCourseListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f08011b

    .line 49
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->lv:Landroid/widget/ListView;

    .line 50
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->url:Ljava/lang/String;

    .line 54
    iget-boolean p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "\u8ab2\u7a0b\u9078\u55ae"

    :goto_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serverDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->serverDataList:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLCourseListActivity;->showList()V

    .line 65
    sget-object p1, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

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

    .line 254
    iget-object v0, p0, Ltw/edu/kmu/act/TBLCourseListActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 260
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 261
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 262
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 263
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 264
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 267
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 269
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    sget-object v2, Ltw/edu/kmu/act/TBLCourseListActivity;->TAG:Ljava/lang/String;

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
