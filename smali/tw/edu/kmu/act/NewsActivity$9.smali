.class Ltw/edu/kmu/act/NewsActivity$9;
.super Landroid/os/Handler;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/NewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 408
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$9;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 410
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$9;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 411
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity$9;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 420
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 421
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/NewsActivity$9$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/NewsActivity$9$2;-><init>(Ltw/edu/kmu/act/NewsActivity$9;)V

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/NewsActivity$9$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/NewsActivity$9$1;-><init>(Ltw/edu/kmu/act/NewsActivity$9;)V

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$9;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsActivity;->access$1300(Ltw/edu/kmu/act/NewsActivity;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$9;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsActivity;->access$1400(Ltw/edu/kmu/act/NewsActivity;)V

    .line 437
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
