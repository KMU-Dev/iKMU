.class Lcom/estimote/sdk/service/BeaconService$IncomingHandler;
.super Landroid/os/Handler;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 465
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 466
    iget-object v2, p0, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;->this$0:Lcom/estimote/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/estimote/sdk/service/BeaconService;->access$1700(Lcom/estimote/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/estimote/sdk/service/BeaconService$IncomingHandler$1;-><init>(Lcom/estimote/sdk/service/BeaconService$IncomingHandler;ILandroid/os/Bundle;Landroid/os/Messenger;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
