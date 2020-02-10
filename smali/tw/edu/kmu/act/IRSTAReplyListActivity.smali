.class public Ltw/edu/kmu/act/IRSTAReplyListActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "IRSTAReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSTAReplyListActivity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private classId:Ljava/lang/String;

.field private className:Ljava/lang/String;

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

.field private url:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->classId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->userID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->className:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->className:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->classId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/IRSTAReplyListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/IRSTAReplyListActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->showList()V

    return-void
.end method

.method private showList()V
    .locals 7

    .line 64
    new-instance v6, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v1, "title11"

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const-string v1, "title12"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0a007b

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;-><init>(Ltw/edu/kmu/act/IRSTAReplyListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a007c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->bundle:Landroid/os/Bundle;

    .line 45
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->classId:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->userID:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "className"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->className:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0033

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->url:Ljava/lang/String;

    const p1, 0x7f0c00db

    .line 53
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08011b

    .line 55
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->lv:Landroid/widget/ListView;

    .line 57
    new-instance p1, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;-><init>(Ltw/edu/kmu/act/IRSTAReplyListActivity;Ltw/edu/kmu/act/IRSTAReplyListActivity$1;)V

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 178
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 184
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 185
    sget-object v0, Ltw/edu/kmu/act/IRSTAReplyListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 170
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    .line 171
    new-instance v0, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;-><init>(Ltw/edu/kmu/act/IRSTAReplyListActivity;Ltw/edu/kmu/act/IRSTAReplyListActivity$1;)V

    const/4 v1, 0x1

    .line 172
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSTAReplyListActivity$GetReplyData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 146
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 151
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    sget-object v1, Ltw/edu/kmu/act/IRSTAReplyListActivity;->TAG:Ljava/lang/String;

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
