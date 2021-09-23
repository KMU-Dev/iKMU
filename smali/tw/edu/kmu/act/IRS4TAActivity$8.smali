.class Ltw/edu/kmu/act/IRS4TAActivity$8;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 554
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$8;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 560
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$8;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1400(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$8;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1800(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 561
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 562
    iput v1, v0, Landroid/os/Message;->what:I

    .line 563
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$8;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1700(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 567
    iput v1, v0, Landroid/os/Message;->what:I

    .line 568
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$8;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1700(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
