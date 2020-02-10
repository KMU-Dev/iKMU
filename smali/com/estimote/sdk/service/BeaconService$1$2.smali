.class Lcom/estimote/sdk/service/BeaconService$1$2;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/service/BeaconService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/estimote/sdk/service/BeaconService$1;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/service/BeaconService$1;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Bluetooth is ON: resuming scanning (monitoring: %d ranging:%d)"

    const/4 v1, 0x2

    .line 562
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v3, v3, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v3}, Lcom/estimote/sdk/service/BeaconService;->access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v3, v3, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v3}, Lcom/estimote/sdk/service/BeaconService;->access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$2;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$900(Lcom/estimote/sdk/service/BeaconService;)V

    :cond_1
    return-void
.end method
