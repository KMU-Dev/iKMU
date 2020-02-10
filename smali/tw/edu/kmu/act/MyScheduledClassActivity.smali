.class public Ltw/edu/kmu/act/MyScheduledClassActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "MyScheduledClassActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/MyScheduledClassActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyScheduledClassActivity"


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

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->CLOSE_PROGRESSBAR:I

    .line 124
    new-instance v0, Ltw/edu/kmu/act/MyScheduledClassActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MyScheduledClassActivity$2;-><init>(Ltw/edu/kmu/act/MyScheduledClassActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/MyScheduledClassActivity;)Landroid/widget/ListView;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/MyScheduledClassActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->showList()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/MyScheduledClassActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/MyScheduledClassActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/MyScheduledClassActivity;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initEnTitle()V
    .locals 6

    const v0, 0x7f0801c9

    .line 66
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801dc

    .line 67
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080202

    .line 68
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08020e

    .line 69
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080218

    .line 70
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "Course Number"

    .line 72
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Subject"

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Type"

    .line 74
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Credit"

    .line 75
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Instructor"

    .line 76
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
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

    .line 199
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    .line 209
    iget-object v3, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-static {v3}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pw"

    .line 210
    iget-object v3, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    invoke-static {v3}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v2, Ltw/edu/kmu/act/MyScheduledClassActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v2, Ltw/edu/kmu/act/MyScheduledClassActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserPassWord is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 219
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private showList()V
    .locals 20

    move-object/from16 v0, p0

    .line 83
    new-instance v7, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const-string v1, "seqno"

    const/4 v9, 0x0

    aput-object v1, v5, v9

    const-string v1, "chineseco"

    const/4 v10, 0x1

    aput-object v1, v5, v10

    const-string v1, "sm"

    const/4 v11, 0x2

    aput-object v1, v5, v11

    const-string v1, "credit"

    const/4 v12, 0x3

    aput-object v1, v5, v12

    const-string v1, "teacherName"

    const/4 v13, 0x4

    aput-object v1, v5, v13

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    const v4, 0x7f0a0085

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 89
    iget-boolean v1, v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    iget-object v2, v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->serverDataList:Ljava/util/ArrayList;

    const v17, 0x7f0a0085

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "seqno"

    aput-object v4, v3, v9

    const-string v4, "englishco"

    aput-object v4, v3, v10

    const-string v4, "esm"

    aput-object v4, v3, v11

    const-string v4, "credit"

    aput-object v4, v3, v12

    const-string v4, "teafenam"

    aput-object v4, v3, v13

    new-array v4, v8, [I

    fill-array-data v4, :array_1

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v19}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 98
    :goto_0
    iget-object v2, v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v1, v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Ltw/edu/kmu/act/MyScheduledClassActivity$1;

    invoke-direct {v2, v0}, Ltw/edu/kmu/act/MyScheduledClassActivity$1;-><init>(Ltw/edu/kmu/act/MyScheduledClassActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c9
        0x7f0801dc
        0x7f080202
        0x7f08020e
        0x7f080218
    .end array-data

    :array_1
    .array-data 4
        0x7f0801c9
        0x7f0801dc
        0x7f080202
        0x7f08020e
        0x7f080218
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0086

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    sget-object v0, Ltw/edu/kmu/act/MyScheduledClassActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScheduledClassActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08011b

    .line 48
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyScheduledClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->lv:Landroid/widget/ListView;

    .line 50
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->url:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 53
    new-instance p1, Ltw/edu/kmu/act/MyScheduledClassActivity$GetServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/MyScheduledClassActivity$GetServerData;-><init>(Ltw/edu/kmu/act/MyScheduledClassActivity;Ltw/edu/kmu/act/MyScheduledClassActivity$1;)V

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyScheduledClassActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    iget-boolean p1, p0, Ltw/edu/kmu/act/MyScheduledClassActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Ltw/edu/kmu/act/MyScheduledClassActivity;->initEnTitle()V

    .line 59
    :cond_0
    sget-object p1, Ltw/edu/kmu/act/MyScheduledClassActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
