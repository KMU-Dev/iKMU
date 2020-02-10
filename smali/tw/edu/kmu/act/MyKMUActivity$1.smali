.class Ltw/edu/kmu/act/MyKMUActivity$1;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->startPing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$1;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schedulerPing is run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$1;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    const/4 v1, 0x0

    .line 117
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
