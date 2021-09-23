.class public Ltw/edu/kmu/act/WacTeaFun2DetailActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaFun2DetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun2DetailActivity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private courList:Ljava/util/ArrayList;
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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/WacTeaFun2DetailActivity;)Landroid/widget/ListView;
    .locals 0

    .line 22
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method private showList()V
    .locals 9

    const v0, 0x7f0801d9

    .line 55
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801dd

    .line 56
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080211

    .line 57
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080215

    .line 58
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080219

    .line 59
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08021a

    .line 60
    invoke-virtual {p0, v5}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08021b

    .line 61
    invoke-virtual {p0, v6}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    iget-object v7, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v8, "stuInfo"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v7, "ngp"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "sucrd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "rycrd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "cntRed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "cntYellow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "cntGreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->courList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->courList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/WacTAmidAlertDetailListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->courList:Ljava/util/ArrayList;

    const v4, 0x7f0a00ef

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "courInfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "teafnam"

    aput-object v7, v5, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/adapter/WacTAmidAlertDetailListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 80
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun2DetailActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity$1;-><init>(Ltw/edu/kmu/act/WacTeaFun2DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d9
        0x7f0801f0
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00f0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 39
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->url:Ljava/lang/String;

    const p1, 0x7f080125

    .line 41
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->lv:Landroid/widget/ListView;

    .line 43
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "stuInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "courList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->parseList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->courList:Ljava/util/ArrayList;

    .line 47
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->showList()V

    .line 49
    sget-object p1, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->TAG:Ljava/lang/String;

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

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 115
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 116
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    sget-object v1, Ltw/edu/kmu/act/WacTeaFun2DetailActivity;->TAG:Ljava/lang/String;

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
