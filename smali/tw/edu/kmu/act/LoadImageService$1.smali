.class Ltw/edu/kmu/act/LoadImageService$1;
.super Ljava/lang/Thread;
.source "LoadImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/LoadImageService;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/LoadImageService;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/LoadImageService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltw/edu/kmu/act/LoadImageService$1;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    :cond_0
    :goto_0
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "work"

    const/16 v2, 0x3ee

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Ltw/edu/kmu/act/LoadImageService$1;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/LoadImageService;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x1388

    .line 105
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
