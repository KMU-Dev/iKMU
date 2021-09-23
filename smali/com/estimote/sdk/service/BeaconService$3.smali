.class Lcom/estimote/sdk/service/BeaconService$3;
.super Landroid/content/BroadcastReceiver;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/service/BeaconService;->createScanStartBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/service/BeaconService;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$3;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 593
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService$3;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {p1}, Lcom/estimote/sdk/service/BeaconService;->access$1700(Lcom/estimote/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/estimote/sdk/service/BeaconService$3$1;

    invoke-direct {p2, p0}, Lcom/estimote/sdk/service/BeaconService$3$1;-><init>(Lcom/estimote/sdk/service/BeaconService$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
