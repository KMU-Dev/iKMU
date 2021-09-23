.class public Ltw/edu/kmu/act/TBLMyGroupActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TBLMyGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLMyGroupActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private groupId:Ljava/lang/String;

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

.field private title1:Landroid/widget/TextView;

.field private title2:Landroid/widget/TextView;

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

    .line 33
    iput v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->CLOSE_PROGRESSBAR:I

    .line 65
    new-instance v0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLMyGroupActivity$1;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/TBLMyGroupActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->showList()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TBLMyGroupActivity;)Landroid/widget/ListView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/TBLMyGroupActivity;)Landroid/os/Bundle;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/TBLMyGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->groupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/TBLMyGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private showList()V
    .locals 8

    .line 101
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->title1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u7d44"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a001c

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v2, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->currentLocale:Ljava/lang/String;

    const-string v7, "en"

    .line 110
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, "stu"

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v1, v1, [I

    const v2, 0x7f0801d5

    aput v2, v1, v7

    move-object v2, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 113
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/TBLMyGroupActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLMyGroupActivity$2;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00d8

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    sget-object v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-boolean p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    const-string p1, "My Group"

    goto :goto_0

    :cond_0
    const-string p1, "\u6211\u7684\u5206\u7d44"

    :goto_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f080125

    .line 50
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->lv:Landroid/widget/ListView;

    const p1, 0x7f0801d7

    .line 51
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->title1:Landroid/widget/TextView;

    const p1, 0x7f0801ea

    .line 52
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLMyGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->title2:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->title2:Landroid/widget/TextView;

    iget-boolean v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "My Group"

    goto :goto_1

    :cond_1
    const-string v1, "\u5b78\u751f\u6e05\u55ae"

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0057

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->url:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity;->bundle:Landroid/os/Bundle;

    .line 58
    new-instance p1, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity;Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    sget-object p1, Ltw/edu/kmu/act/TBLMyGroupActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "stuList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 193
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object v1, Ltw/edu/kmu/act/TBLMyGroupActivity;->TAG:Ljava/lang/String;

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
