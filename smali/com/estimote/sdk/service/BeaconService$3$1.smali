.class Lcom/estimote/sdk/service/BeaconService$3$1;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/service/BeaconService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/estimote/sdk/service/BeaconService$3;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/service/BeaconService$3;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$3$1;->this$1:Lcom/estimote/sdk/service/BeaconService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService$3$1;->this$1:Lcom/estimote/sdk/service/BeaconService$3;

    iget-object v0, v0, Lcom/estimote/sdk/service/BeaconService$3;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/estimote/sdk/service/BeaconService;->access$900(Lcom/estimote/sdk/service/BeaconService;)V

    return-void
.end method
