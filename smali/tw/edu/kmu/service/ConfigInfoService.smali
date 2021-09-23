.class public Ltw/edu/kmu/service/ConfigInfoService;
.super Landroid/app/IntentService;
.source "ConfigInfoService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigInfoService"


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
    .locals 2

    .line 38
    sget-object v0, Ltw/edu/kmu/service/ConfigInfoService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v0, Ltw/edu/kmu/act/R$string;

    iput-object v0, p0, Ltw/edu/kmu/service/ConfigInfoService;->res:Ljava/lang/Class;

    .line 39
    sget-object v0, Ltw/edu/kmu/service/ConfigInfoService;->TAG:Ljava/lang/String;

    const-string v1, "\u5efa\u7acbConfigInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/service/ConfigInfoService;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ltw/edu/kmu/service/ConfigInfoService;->readServerData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Ltw/edu/kmu/service/ConfigInfoService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getJsonFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 153
    new-array p2, p2, [B

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 155
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 156
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    sget-object p2, Ltw/edu/kmu/service/ConfigInfoService;->TAG:Ljava/lang/String;

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

    .line 130
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoService;->mRes:Landroid/content/res/Resources;

    invoke-static {p1, v0}, Ltw/edu/kmu/tool/SystemInfoTool;->getStringFromResources(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    iget-object v2, p0, Ltw/edu/kmu/service/ConfigInfoService;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    invoke-virtual {v2, v0, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoService;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/service/ConfigInfoService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/service/ConfigInfoService;->sharedData:Landroid/content/SharedPreferences;

    .line 58
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/service/ConfigInfoService;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    .line 59
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/service/ConfigInfoService;->mRes:Landroid/content/res/Resources;

    .line 60
    invoke-virtual {p0}, Ltw/edu/kmu/service/ConfigInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/tool/SystemInfoTool;->isNetworkAlive(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 80
    new-instance v1, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;-><init>(Ltw/edu/kmu/service/ConfigInfoService;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "systemConfig"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, p1}, Ltw/edu/kmu/service/ConfigInfoService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
