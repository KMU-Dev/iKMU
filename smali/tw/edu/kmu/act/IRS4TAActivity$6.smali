.class Ltw/edu/kmu/act/IRS4TAActivity$6;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->startReconnect()V
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

    .line 475
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$6;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 483
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$6;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1400(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$6;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1500(Ltw/edu/kmu/act/IRS4TAActivity;)V

    :cond_0
    return-void
.end method
