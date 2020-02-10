.class public Ltw/edu/kmu/act/EvlTACourseActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "EvlTACourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlTACourseActivity$GetCourData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlTACourseActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private conoList:Ljava/util/ArrayList;
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

.field protected display:Landroid/view/Display;

.field expListView:Landroid/widget/ExpandableListView;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private isEnglish:Z

.field listAdapter:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

.field listDataChild:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field listDataHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private myTitle:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/EvlTACourseActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/EvlTACourseActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlTACourseActivity;)Landroid/os/Bundle;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlTACourseActivity;)Ltw/edu/kmu/resource/ServerResource;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlTACourseActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->conoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/EvlTACourseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->conoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/EvlTACourseActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->showList()V

    return-void
.end method

.method private prepareListData()V
    .locals 13

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataHeader:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataChild:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->conoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 97
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    const-string v6, "statList"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "stKey"

    const-string v8, ""

    .line 100
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "stValAll"

    .line 101
    iget-boolean v8, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    if-eqz v8, :cond_0

    const-string v8, "Total"

    goto :goto_1

    :cond_0
    const-string v8, "\u5168\u90e8\u8a55\u91cf"

    :goto_1
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "stValValid"

    .line 102
    iget-boolean v8, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    if-eqz v8, :cond_1

    const-string v8, "Authentic"

    goto :goto_2

    :cond_1
    const-string v8, "\u6709\u6548\u8a55\u91cf"

    :goto_2
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 104
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 105
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 107
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 109
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 111
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 113
    :cond_2
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v5

    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    .line 117
    :goto_5
    sget-object v6, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v5

    const-string v5, "semCode"

    .line 119
    iget-object v6, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->bundle:Landroid/os/Bundle;

    const-string v7, "semCode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v5, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataHeader:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v4, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataChild:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private showList()V
    .locals 3

    const v0, 0x7f080123

    .line 79
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlTACourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->expListView:Landroid/widget/ExpandableListView;

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->expListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->prepareListData()V

    .line 82
    new-instance v0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataHeader:Ljava/util/List;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listDataChild:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v2}, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listAdapter:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    .line 83
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->expListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->listAdapter:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 85
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->expListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a005b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->bundle:Landroid/os/Bundle;

    .line 50
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    const-string p1, "window"

    .line 52
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->display:Landroid/view/Display;

    .line 54
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    .line 56
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading.."

    goto :goto_0

    :cond_0
    const-string v0, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Please wait"

    goto :goto_1

    :cond_1
    const-string v0, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 66
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "semName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p1, Ltw/edu/kmu/act/EvlTACourseActivity$GetCourData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/EvlTACourseActivity$GetCourData;-><init>(Ltw/edu/kmu/act/EvlTACourseActivity;Ltw/edu/kmu/act/EvlTACourseActivity$1;)V

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/EvlTACourseActivity$GetCourData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    sget-object p1, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 201
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
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

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 181
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    sget-object p2, Ltw/edu/kmu/act/EvlTACourseActivity;->TAG:Ljava/lang/String;

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
