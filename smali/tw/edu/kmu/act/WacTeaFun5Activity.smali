.class public Ltw/edu/kmu/act/WacTeaFun5Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaFun5Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaFun5Activity$GetReMitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun5Activity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private dataList:Ljava/util/ArrayList;
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

.field private lv:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/WacTeaFun5Activity;)Landroid/widget/ListView;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/WacTeaFun5Activity;)Landroid/os/Bundle;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WacTeaFun5Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->dataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/WacTeaFun5Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->dataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun5Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/WacTeaFun5Activity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun5Activity;->showList()V

    return-void
.end method

.method private showList()V
    .locals 8

    .line 53
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->dataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun5Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->dataList:Ljava/util/ArrayList;

    const v4, 0x7f0a00f3

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

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 63
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun5Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun5Activity$1;-><init>(Ltw/edu/kmu/act/WacTeaFun5Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801e2
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00ee

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun5Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun5Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->bundle:Landroid/os/Bundle;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/WacTeaFun5Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->sharedData:Landroid/content/SharedPreferences;

    .line 38
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->bundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun5Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080168

    .line 40
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun5Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f08011b

    .line 42
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun5Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun5Activity;->lv:Landroid/widget/ListView;

    .line 44
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun5Activity$GetReMitData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/WacTeaFun5Activity$GetReMitData;-><init>(Ltw/edu/kmu/act/WacTeaFun5Activity;Ltw/edu/kmu/act/WacTeaFun5Activity$1;)V

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/WacTeaFun5Activity$GetReMitData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    sget-object p1, Ltw/edu/kmu/act/WacTeaFun5Activity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parseList(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 138
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 139
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 144
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    sget-object v1, Ltw/edu/kmu/act/WacTeaFun5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseList Error:"

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
