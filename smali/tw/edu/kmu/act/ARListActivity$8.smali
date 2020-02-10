.class Ltw/edu/kmu/act/ARListActivity$8;
.super Landroid/os/Handler;
.source "ARListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ARListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARListActivity;)V
    .locals 0

    .line 504
    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 507
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$500(Ltw/edu/kmu/act/ARListActivity;)V

    .line 515
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARListActivity;->access$800(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v3, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 516
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080055

    .line 517
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 518
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 519
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/ARListActivity$8$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ARListActivity$8$2;-><init>(Ltw/edu/kmu/act/ARListActivity$8;)V

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/ARListActivity$8$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ARListActivity$8$1;-><init>(Ltw/edu/kmu/act/ARListActivity$8;)V

    .line 527
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$500(Ltw/edu/kmu/act/ARListActivity;)V

    .line 537
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARListActivity;->access$800(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v3, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$500(Ltw/edu/kmu/act/ARListActivity;)V

    .line 510
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARListActivity;->access$800(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v3, p0, Ltw/edu/kmu/act/ARListActivity$8;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/ARListActivity;->access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 540
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
