.class Ltw/edu/kmu/act/LoadImageService$CommandReciver;
.super Landroid/content/BroadcastReceiver;
.source "LoadImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/LoadImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandReciver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/LoadImageService;

.field private times:I


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/LoadImageService;)V
    .locals 0

    .line 244
    iput-object p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "CommandReciver"

    .line 245
    iput-object p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 246
    iput p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->times:I

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/LoadImageService;Ltw/edu/kmu/act/LoadImageService$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/LoadImageService$CommandReciver;-><init>(Ltw/edu/kmu/act/LoadImageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "work"

    const/4 v0, -0x1

    .line 249
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 250
    iget-object p2, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "work="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3ee

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {v0}, Ltw/edu/kmu/act/LoadImageService;->access$102(Z)Z

    .line 261
    iget-object p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {p1}, Ltw/edu/kmu/act/LoadImageService;->stopSelf()V

    .line 262
    iget-object p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->TAG:Ljava/lang/String;

    const-string p2, "stop service"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$400()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    new-instance p1, Ltw/edu/kmu/act/LoadImageService$ScanImage;

    iget-object v2, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->this$0:Ltw/edu/kmu/act/LoadImageService;

    iget-object p2, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {p2}, Ltw/edu/kmu/act/LoadImageService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object p2, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {p2}, Ltw/edu/kmu/act/LoadImageService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$500()I

    move-result v5

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$600()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ltw/edu/kmu/act/LoadImageService$ScanImage;-><init>(Ltw/edu/kmu/act/LoadImageService;Landroid/content/res/Resources;Ljava/lang/String;III)V

    const/4 p2, 0x1

    .line 255
    new-array p2, p2, [Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/LoadImageService$ScanImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    iget-object p1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ready to scan image:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->times:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltw/edu/kmu/act/LoadImageService$CommandReciver;->times:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
