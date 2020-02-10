.class Ltw/edu/kmu/act/IRSActivity$6;
.super Landroid/os/Handler;
.source "IRSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->initHandler()V
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

    .line 614
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 617
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ltw/edu/kmu/act/IRSActivity;->access$2200(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 623
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 624
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 625
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_1
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;I)V

    .line 630
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;I)V

    .line 631
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object p1

    const-string v0, "ansSuccess"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 633
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 635
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 636
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Connection Error"

    goto :goto_0

    :cond_3
    const-string v0, "\u9023\u63a5\u5931\u6557\uff0c\u7cfb\u7edf\u6b63\u5728\u91cd\u9023"

    :goto_0
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 637
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    .line 639
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time out quid :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/IRSActivity;->access$2700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance p1, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    const/4 v4, 0x0

    invoke-direct {p1, v0, v4}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 641
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$2700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "1"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1, v4}, Ltw/edu/kmu/act/IRSActivity;->access$2702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u5feb\u554f\u5feb\u7b54"

    .line 643
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 644
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3000(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 645
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 646
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 648
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 649
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 650
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "00:00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3700(Ltw/edu/kmu/act/IRSActivity;)V

    .line 653
    :cond_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    .line 654
    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$3800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Time is up"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$2900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6642\u9593\u5230\u4e86"

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_7

    const-string v0, "OK"

    goto :goto_3

    :cond_7
    const-string v0, "\u78ba\u5b9a"

    :goto_3
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$6$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$6$1;-><init>(Ltw/edu/kmu/act/IRSActivity$6;)V

    .line 655
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 660
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 661
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4000(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->dismiss()V

    goto/16 :goto_6

    .line 664
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_a

    .line 666
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 667
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$4200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_9
    const-string v0, "\u5feb\u554f\u5feb\u7b54"

    .line 671
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$2900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 673
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$3600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 675
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 676
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2000(Ltw/edu/kmu/act/IRSActivity;)V

    .line 677
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_b

    const-string v0, "Multiple Questions Time is up"

    goto :goto_4

    :cond_b
    const-string v0, "\u591a\u984c\u9023\u7b54\u6642\u9593\u5230\u4e86"

    .line 678
    :goto_4
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_c

    const-string v0, "OK"

    goto :goto_5

    :cond_c
    const-string v0, "\u78ba\u5b9a"

    :goto_5
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$6$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$6$2;-><init>(Ltw/edu/kmu/act/IRSActivity$6;)V

    .line 679
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 684
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 685
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 687
    :cond_d
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "00:00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 688
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_f

    .line 689
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$6;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_6
    return-void
.end method
