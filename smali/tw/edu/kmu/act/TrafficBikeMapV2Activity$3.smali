.class Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;
.super Landroid/os/Handler;
.source "TrafficBikeMapV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TrafficBikeMapV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 286
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$600(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 299
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$300(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$900(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 301
    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Network Error"

    goto :goto_0

    :cond_1
    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 302
    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Please Retry"

    goto :goto_1

    :cond_2
    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 303
    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Retry"

    goto :goto_2

    :cond_3
    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    :goto_2
    new-instance v2, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3$2;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 311
    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Cancell"

    goto :goto_3

    :cond_4
    const-string v1, "\u53d6\u6d88"

    :goto_3
    new-instance v2, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3$1;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 320
    :cond_5
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$600(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_4

    .line 295
    :cond_6
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$700(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    .line 296
    invoke-static {}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_TIMER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 289
    :cond_7
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$700(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)V

    .line 290
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "22.645581"

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "120.310318"

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 291
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$800(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 292
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$3;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$800(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 326
    :goto_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
