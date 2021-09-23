.class public Ltw/edu/kmu/service/ConfigInfoJobService;
.super Landroid/support/v4/app/JobIntentService;
.source "ConfigInfoJobService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/service/ConfigInfoJobService$WorkerThread;
    }
.end annotation


# static fields
.field static final JOB_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ConfigInfoJobService"


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field protected res:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ltw/edu/kmu/act/R$string;",
            ">;"
        }
    .end annotation
.end field

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;

.field private sharedData:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    .line 33
    const-class v0, Ltw/edu/kmu/act/R$string;

    iput-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->res:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/service/ConfigInfoJobService;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ltw/edu/kmu/service/ConfigInfoJobService;->readServerData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Ltw/edu/kmu/service/ConfigInfoJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    const-class v0, Ltw/edu/kmu/service/ConfigInfoJobService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Ltw/edu/kmu/service/ConfigInfoJobService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 157
    new-array p2, p2, [B

    .line 158
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 159
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 160
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    sget-object p2, Ltw/edu/kmu/service/ConfigInfoJobService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private readServerData(Ljava/lang/String;I)V
    .locals 3

    const-string p2, ""

    .line 134
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->mRes:Landroid/content/res/Resources;

    invoke-static {p1, v0}, Ltw/edu/kmu/tool/SystemInfoTool;->getStringFromResources(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    iget-object v2, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    invoke-virtual {v2, v0, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoJobService;->startDownload()V

    return-void
.end method

.method protected startDownload()V
    .locals 3

    const-string v0, "Data"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/service/ConfigInfoJobService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->sharedData:Landroid/content/SharedPreferences;

    .line 62
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    .line 63
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoJobService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/service/ConfigInfoJobService;->mRes:Landroid/content/res/Resources;

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/tool/SystemInfoTool;->isNetworkAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 84
    new-instance v2, Ltw/edu/kmu/service/ConfigInfoJobService$WorkerThread;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/service/ConfigInfoJobService$WorkerThread;-><init>(Ltw/edu/kmu/service/ConfigInfoJobService;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "systemConfig"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Ltw/edu/kmu/service/ConfigInfoJobService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
