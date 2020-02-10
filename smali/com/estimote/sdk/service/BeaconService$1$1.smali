.class Lcom/estimote/sdk/service/BeaconService$1$1;
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

    .line 548
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$1$1;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Bluetooth is OFF: stopping scanning"

    .line 551
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$1;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$1800(Lcom/estimote/sdk/service/BeaconService;)V

    .line 553
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$1;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$700(Lcom/estimote/sdk/service/BeaconService;)V

    .line 554
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$1$1;->this$1:Lcom/estimote/sdk/service/BeaconService$1;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
