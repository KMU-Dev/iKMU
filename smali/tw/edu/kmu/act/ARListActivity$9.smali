.class Ltw/edu/kmu/act/ARListActivity$9;
.super Ljava/lang/Object;
.source "ARListActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

.field time:J


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARListActivity;)V
    .locals 2

    .line 546
    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity$9;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Ltw/edu/kmu/act/ARListActivity$9;->time:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 560
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$9;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$1000(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 565
    iget-wide v2, p0, Ltw/edu/kmu/act/ARListActivity$9;->time:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 566
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    float-to-double v3, p1

    .line 568
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$9;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$1000(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result p1

    if-ge v2, p1, :cond_0

    .line 569
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$9;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$1000(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v5, "aa"

    .line 570
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v7, 0x0

    sub-double v5, v3, v5

    :try_start_1
    const-string v7, "angle"

    .line 571
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$9;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$1000(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 575
    iput-wide v0, p0, Ltw/edu/kmu/act/ARListActivity$9;->time:J

    .line 576
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
