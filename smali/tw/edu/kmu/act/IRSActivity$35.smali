.class Ltw/edu/kmu/act/IRSActivity$35;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 2494
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$35;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2500
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$35;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$35;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$5000(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 2501
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2502
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2503
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$35;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$4700(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2505
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 2508
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2509
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$35;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$4700(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
