.class public Ltw/edu/kmu/act/MyScoreActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "MyScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/MyScoreActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyScoreActivity"


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

    .line 22
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 28
    iput v0, p0, Ltw/edu/kmu/act/MyScoreActivity;->CLOSE_PROGRESSBAR:I

    .line 104
    new-instance v0, Ltw/edu/kmu/act/MyScoreActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MyScoreActivity$2;-><init>(Ltw/edu/kmu/act/MyScoreActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MyScoreActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/MyScoreActivity;)Landroid/widget/ListView;
    .locals 0

    .line 22
    iget-object p0, p0, Ltw/edu/kmu/act/MyScoreActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/MyScoreActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScoreActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/MyScoreActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iput-object p1, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/MyScoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScoreActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/MyScoreActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Ltw/edu/kmu/act/MyScoreActivity;->handler:Landroid/os/Handler;

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

    .line 179
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScoreActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    .line 189
    iget-object v3, p0, Ltw/edu/kmu/act/MyScoreActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-static {v3}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/MyScoreActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 195
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/MyScoreActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "syear"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5e74\u5ea6\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "sem"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5b78\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyScoreActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "syear"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " academic year "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "sem"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " semester "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 70
    :cond_1
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/MyScoreActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a0090

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "title"

    aput-object v7, v6, v0

    new-array v7, v2, [I

    const v2, 0x7f0801c7

    aput v2, v7, v0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 78
    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/act/MyScoreActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/MyScoreActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyScoreActivity$1;-><init>(Ltw/edu/kmu/act/MyScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a008f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    sget-object v0, Ltw/edu/kmu/act/MyScoreActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00e8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScoreActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/MyScoreActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08011b

    .line 46
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/MyScoreActivity;->lv:Landroid/widget/ListView;

    .line 48
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyScoreActivity;->url:Ljava/lang/String;

    .line 50
    iget-object p1, p0, Ltw/edu/kmu/act/MyScoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 51
    new-instance p1, Ltw/edu/kmu/act/MyScoreActivity$GetServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/MyScoreActivity$GetServerData;-><init>(Ltw/edu/kmu/act/MyScoreActivity;Ltw/edu/kmu/act/MyScoreActivity$1;)V

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyScoreActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    sget-object p1, Ltw/edu/kmu/act/MyScoreActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
