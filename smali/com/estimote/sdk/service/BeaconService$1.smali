.class Lcom/estimote/sdk/service/BeaconService$1;
.super Landroid/content/BroadcastReceiver;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/service/BeaconService;->createBluetoothBroadcastReceiver()Landroid/content/BroadcastReceiver;
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

    .line 542
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    .line 546
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 548
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {p1}, Lcom/estimote/sdk/service/BeaconService;->access$1700(Lcom/estimote/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/estimote/sdk/service/BeaconService$1$1;

    invoke-direct {p2, p0}, Lcom/estimote/sdk/service/BeaconService$1$1;-><init>(Lcom/estimote/sdk/service/BeaconService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    .line 558
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService$1;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {p1}, Lcom/estimote/sdk/service/BeaconService;->access$1700(Lcom/estimote/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/estimote/sdk/service/BeaconService$1$2;

    invoke-direct {p2, p0}, Lcom/estimote/sdk/service/BeaconService$1$2;-><init>(Lcom/estimote/sdk/service/BeaconService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
