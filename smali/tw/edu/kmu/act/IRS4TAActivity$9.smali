.class Ltw/edu/kmu/act/IRS4TAActivity$9;
.super Landroid/os/Handler;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->initHandler()V
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

    .line 577
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$9;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 580
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 581
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$9;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1900(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 589
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$9;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1400(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 593
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 595
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 596
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$9;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$9;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Connection Error"

    goto :goto_0

    :cond_2
    const-string v0, "\u9023\u63a5\u5931\u6557\uff0c\u7cfb\u7edf\u6b63\u5728\u91cd\u9023"

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method
