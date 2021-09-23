.class public Ltw/edu/kmu/act/EvlProgActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "EvlProgActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlProgActivity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private linearLayout1:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private lv:Landroid/widget/ListView;

.field private norYn:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 65
    iget-object v0, p0, Ltw/edu/kmu/act/EvlProgActivity;->norYn:Ljava/lang/String;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0801d7

    .line 67
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0801ea

    .line 68
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080210

    .line 69
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u4e0a\u8ab2\u65e5\u671f"

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u7bc0\u6b21"

    .line 71
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u8ab2\u7a0b\u4e3b\u984c"

    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0801eb

    .line 79
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0801f0

    .line 80
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u9031\u6578"

    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u8ab2\u7a0b\u4e3b\u984c"

    .line 82
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private parseProgList(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 101
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    sget-object v1, Ltw/edu/kmu/act/EvlProgActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseProgList Error:"

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

.method private showList()V
    .locals 17

    move-object/from16 v0, p0

    .line 120
    iget-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 134
    :cond_0
    iget-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->norYn:Ljava/lang/String;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlProgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Ltw/edu/kmu/act/EvlProgActivity;->serverDataList:Ljava/util/ArrayList;

    const v8, 0x7f0a0053

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "claDate"

    aput-object v10, v9, v3

    const-string v3, "secNo"

    aput-object v3, v9, v2

    iget-boolean v2, v0, Ltw/edu/kmu/act/EvlProgActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "esubject"

    goto :goto_0

    :cond_1
    const-string v2, "subject"

    :goto_0
    aput-object v2, v9, v4

    new-array v10, v5, [I

    fill-array-data v10, :array_0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->adapter:Landroid/widget/SimpleAdapter;

    goto :goto_2

    .line 145
    :cond_2
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlProgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Ltw/edu/kmu/act/EvlProgActivity;->serverDataList:Ljava/util/ArrayList;

    const v14, 0x7f0a0054

    new-array v15, v4, [Ljava/lang/String;

    const-string v5, "week"

    aput-object v5, v15, v3

    iget-boolean v3, v0, Ltw/edu/kmu/act/EvlProgActivity;->isEnglish:Z

    if-eqz v3, :cond_3

    const-string v3, "esubject"

    goto :goto_1

    :cond_3
    const-string v3, "subject"

    :goto_1
    aput-object v3, v15, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 161
    :goto_2
    iget-object v1, v0, Ltw/edu/kmu/act/EvlProgActivity;->lv:Landroid/widget/ListView;

    iget-object v2, v0, Ltw/edu/kmu/act/EvlProgActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_4
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d7
        0x7f0801ea
        0x7f080210
    .end array-data

    :array_1
    .array-data 4
        0x7f0801d7
        0x7f0801ea
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0055

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    sget-object v0, Ltw/edu/kmu/act/EvlProgActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080125

    .line 37
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->lv:Landroid/widget/ListView;

    .line 39
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlProgActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->bundle:Landroid/os/Bundle;

    .line 41
    iget-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "norYn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->norYn:Ljava/lang/String;

    .line 42
    sget-object p1, Ltw/edu/kmu/act/EvlProgActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "norYn is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlProgActivity;->norYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080120

    .line 44
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout1:Landroid/widget/LinearLayout;

    const p1, 0x7f080121

    .line 45
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlProgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 48
    iget-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "chineseCo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlProgActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "progDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlProgActivity;->serverDataList:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlProgActivity;->showList()V

    .line 54
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlProgActivity;->initTitle()V

    .line 56
    sget-object p1, Ltw/edu/kmu/act/EvlProgActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
