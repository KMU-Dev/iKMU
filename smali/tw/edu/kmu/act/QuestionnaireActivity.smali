.class public Ltw/edu/kmu/act/QuestionnaireActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "QuestionnaireActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/QuestionnaireActivity$getServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuestionnaireActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->CLOSE_PROGRESSBAR:I

    .line 132
    new-instance v0, Ltw/edu/kmu/act/QuestionnaireActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/QuestionnaireActivity$2;-><init>(Ltw/edu/kmu/act/QuestionnaireActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/QuestionnaireActivity;)Landroid/widget/ListView;
    .locals 0

    .line 20
    iget-object p0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/QuestionnaireActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 20
    iget-object p0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Ltw/edu/kmu/act/QuestionnaireActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/QuestionnaireActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->showList()V

    return-void
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/QuestionnaireActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/QuestionnaireActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    invoke-direct {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/QuestionnaireActivity;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 4
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

    .line 189
    invoke-virtual {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    iget-object v2, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 204
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 63
    iget-object v3, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "title1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8aaa\u660e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "questionnaireDesc"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "title2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u985e\u5225:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "anonymous"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "no"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u8a18\u540d\u554f\u5377"

    goto :goto_1

    :cond_0
    const-string v2, "\u7121\u8a18\u540d\u554f\u5377"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a00b3

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "questionnaireName"

    aput-object v7, v6, v0

    const-string v0, "title1"

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const-string v7, "title2"

    aput-object v7, v6, v0

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 75
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/QuestionnaireActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/QuestionnaireActivity$1;-><init>(Ltw/edu/kmu/act/QuestionnaireActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d5
        0x7f080245
        0x7f0800c1
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a008f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    sget-object v0, Ltw/edu/kmu/act/QuestionnaireActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 43
    invoke-virtual {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/QuestionnaireActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 45
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/QuestionnaireActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->lv:Landroid/widget/ListView;

    .line 47
    invoke-virtual {p0}, Ltw/edu/kmu/act/QuestionnaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->url:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 50
    new-instance p1, Ltw/edu/kmu/act/QuestionnaireActivity$getServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/QuestionnaireActivity$getServerData;-><init>(Ltw/edu/kmu/act/QuestionnaireActivity;Ltw/edu/kmu/act/QuestionnaireActivity$1;)V

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/QuestionnaireActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    sget-object p1, Ltw/edu/kmu/act/QuestionnaireActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
