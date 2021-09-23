.class Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;
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

    .line 331
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 333
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 335
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080055

    .line 336
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 337
    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Alert"

    goto :goto_0

    :cond_1
    const-string v0, "\u8cbc\u5fc3\u5c0f\u63d0\u793a"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 338
    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NetWork Error"

    goto :goto_1

    :cond_2
    const-string v0, "\u76ee\u524d\u7121\u6cd5\u9023\u4e0a\u7db2\u8def"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 339
    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NetWork Setting"

    goto :goto_2

    :cond_3
    const-string v0, "\u8a2d\u5b9a\u7db2\u8def"

    :goto_2
    new-instance v1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$2;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;->this$0:Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    .line 349
    invoke-static {v0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;->access$1000(Ltw/edu/kmu/act/TrafficBikeMapV2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Cancell"

    goto :goto_3

    :cond_4
    const-string v0, "\u53d6\u6d88"

    :goto_3
    new-instance v1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4$1;-><init>(Ltw/edu/kmu/act/TrafficBikeMapV2Activity$4;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_4
    return-void
.end method
