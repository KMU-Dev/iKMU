.class public Ltw/edu/kmu/act/AppInstallActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "AppInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/AppInstallActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInstallActivity"


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

    .line 29
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 39
    iput v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->CLOSE_PROGRESSBAR:I

    .line 133
    new-instance v0, Ltw/edu/kmu/act/AppInstallActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/AppInstallActivity$2;-><init>(Ltw/edu/kmu/act/AppInstallActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/AppInstallActivity;)Landroid/widget/ListView;
    .locals 0

    .line 29
    iget-object p0, p0, Ltw/edu/kmu/act/AppInstallActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/AppInstallActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ltw/edu/kmu/act/AppInstallActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/AppInstallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/AppInstallActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    invoke-direct {p0}, Ltw/edu/kmu/act/AppInstallActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/AppInstallActivity;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Ltw/edu/kmu/act/AppInstallActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "id="

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "id="

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
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

    .line 189
    invoke-virtual {p0}, Ltw/edu/kmu/act/AppInstallActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->mainHandler:Landroid/os/Handler;

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

    .line 197
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pf"

    const-string v3, "android"

    .line 198
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Ltw/edu/kmu/act/AppInstallActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/AppInstallActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    sget-object v2, Ltw/edu/kmu/act/AppInstallActivity;->TAG:Ljava/lang/String;

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

    .line 202
    iget-object v1, p0, Ltw/edu/kmu/act/AppInstallActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 15

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "title"

    const-string v4, "name"

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "speaker"

    const-string v4, "description"

    .line 81
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "url"

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Ltw/edu/kmu/act/AppInstallActivity;->getId(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "appId"

    const-string v4, "url"

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ltw/edu/kmu/act/AppInstallActivity;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "icon"

    .line 84
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v2

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageLink"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 88
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/AppInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ltw/edu/kmu/act/AppInstallActivity;->serverDataList:Ljava/util/ArrayList;

    iget-boolean v1, p0, Ltw/edu/kmu/act/AppInstallActivity;->isPad:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a00f7

    const v7, 0x7f0a00f7

    goto :goto_1

    :cond_1
    const v1, 0x7f0a00f8

    const v7, 0x7f0a00f8

    :goto_1
    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v8, v3

    const-string v3, "speaker"

    aput-object v3, v8, v2

    const/4 v2, 0x2

    const-string v3, "imageLink"

    aput-object v3, v8, v2

    const/4 v2, 0x3

    const-string v3, "link"

    aput-object v3, v8, v2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    .line 93
    invoke-virtual {p0}, Ltw/edu/kmu/act/AppInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 94
    invoke-virtual {p0}, Ltw/edu/kmu/act/AppInstallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x64

    const/16 v13, 0x3c

    const/4 v14, 0x5

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    iput-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 99
    iget-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/AppInstallActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Ltw/edu/kmu/act/AppInstallActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/AppInstallActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/AppInstallActivity$1;-><init>(Ltw/edu/kmu/act/AppInstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c7
        0x7f08019c
        0x7f0800fe
        0x7f080118
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00f9

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Ltw/edu/kmu/act/AppInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity;->url:Ljava/lang/String;

    const p1, 0x7f0c00bd

    .line 49
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AppInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AppInstallActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080246

    .line 50
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AppInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity;->lv:Landroid/widget/ListView;

    .line 52
    new-instance p1, Ltw/edu/kmu/act/AppInstallActivity$GetServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/AppInstallActivity$GetServerData;-><init>(Ltw/edu/kmu/act/AppInstallActivity;Ltw/edu/kmu/act/AppInstallActivity$1;)V

    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/AppInstallActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tw.edu.kmu.act.LoadImageService"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "work"

    const/16 v2, 0x3f7

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/AppInstallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 221
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->resetService()V

    const v0, 0x7f0c001d

    .line 222
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/AppInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->setImageUrl(Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/LoadImageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/AppInstallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method
