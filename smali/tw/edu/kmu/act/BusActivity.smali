.class public Ltw/edu/kmu/act/BusActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "BusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/BusActivity$getServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BusActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

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

    .line 21
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 27
    iput v0, p0, Ltw/edu/kmu/act/BusActivity;->CLOSE_PROGRESSBAR:I

    .line 94
    new-instance v0, Ltw/edu/kmu/act/BusActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/BusActivity$2;-><init>(Ltw/edu/kmu/act/BusActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/BusActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/BusActivity;)Landroid/widget/ListView;
    .locals 0

    .line 21
    iget-object p0, p0, Ltw/edu/kmu/act/BusActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/BusActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ltw/edu/kmu/act/BusActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/BusActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iput-object p1, p0, Ltw/edu/kmu/act/BusActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/BusActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    invoke-direct {p0}, Ltw/edu/kmu/act/BusActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/BusActivity;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Ltw/edu/kmu/act/BusActivity;->handler:Landroid/os/Handler;

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

    .line 149
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Ltw/edu/kmu/act/BusActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object v2, p0, Ltw/edu/kmu/act/BusActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/BusActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    sget-object v2, Ltw/edu/kmu/act/BusActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Ltw/edu/kmu/act/BusActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 8

    .line 61
    new-instance v6, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/BusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/BusActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v3, p0, Ltw/edu/kmu/act/BusActivity;->currentLocale:Ljava/lang/String;

    const-string v5, "en"

    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "enickname"

    goto :goto_0

    :cond_0
    const-string v3, "nickname"

    :goto_0
    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    iget-object v5, p0, Ltw/edu/kmu/act/BusActivity;->currentLocale:Ljava/lang/String;

    const-string v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "efromTo"

    goto :goto_1

    :cond_1
    const-string v5, "fromTo"

    :goto_1
    aput-object v5, v4, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0a0033

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v6, p0, Ltw/edu/kmu/act/BusActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 67
    iget-object v0, p0, Ltw/edu/kmu/act/BusActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/BusActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Ltw/edu/kmu/act/BusActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/BusActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/BusActivity$1;-><init>(Ltw/edu/kmu/act/BusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d5
        0x7f080245
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0032

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    sget-object v0, Ltw/edu/kmu/act/BusActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0134

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BusActivity;->display:Landroid/view/Display;

    const p1, 0x7f080125

    .line 46
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/BusActivity;->lv:Landroid/widget/ListView;

    .line 47
    invoke-virtual {p0}, Ltw/edu/kmu/act/BusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BusActivity;->url:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Ltw/edu/kmu/act/BusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 50
    new-instance p1, Ltw/edu/kmu/act/BusActivity$getServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/BusActivity$getServerData;-><init>(Ltw/edu/kmu/act/BusActivity;Ltw/edu/kmu/act/BusActivity$1;)V

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/BusActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    sget-object p1, Ltw/edu/kmu/act/BusActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
