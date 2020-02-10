.class Ltw/edu/kmu/act/IRSActivity$33;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->startReconnect()V
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

    .line 2410
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$33;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2415
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduler is run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$33;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$33;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$4900(Ltw/edu/kmu/act/IRSActivity;)V

    goto :goto_0

    .line 2421
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$33;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
