.class Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;
.super Ljava/lang/Object;
.source "ConfigInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/service/ConfigInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field loadType:I

.field final synthetic this$0:Ltw/edu/kmu/service/ConfigInfoService;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/service/ConfigInfoService;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->this$0:Ltw/edu/kmu/service/ConfigInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p2, p0, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->loadType:I

    return-void
.end method

.method private processCommand(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->this$0:Ltw/edu/kmu/service/ConfigInfoService;

    const-string v1, "URL_BEACON_INFO"

    invoke-static {v0, v1, p1}, Ltw/edu/kmu/service/ConfigInfoService;->access$000(Ltw/edu/kmu/service/ConfigInfoService;Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->this$0:Ltw/edu/kmu/service/ConfigInfoService;

    const-string v1, "URL_BEACON_INFO"

    invoke-static {v0, v1, p1}, Ltw/edu/kmu/service/ConfigInfoService;->access$000(Ltw/edu/kmu/service/ConfigInfoService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    :goto_0
    invoke-static {}, Ltw/edu/kmu/service/ConfigInfoService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error and error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget v0, p0, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->loadType:I

    invoke-direct {p0, v0}, Ltw/edu/kmu/service/ConfigInfoService$WorkerThread;->processCommand(I)V

    return-void
.end method
