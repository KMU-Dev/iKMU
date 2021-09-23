.class Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;
.super Ljava/lang/Object;
.source "TrafficBikeMapV2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;)V
    .locals 0

    .line 340
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;->this$1:Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 343
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;->this$1:Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;

    iget-object p1, p1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$600(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 344
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;->this$1:Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;

    iget-object p2, p2, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 346
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;->this$1:Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;

    iget-object p1, p1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$600(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method
