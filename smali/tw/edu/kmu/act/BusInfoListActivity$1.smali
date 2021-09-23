.class Ltw/edu/kmu/act/BusInfoListActivity$1;
.super Landroid/os/Handler;
.source "BusInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/BusInfoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/BusInfoListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BusInfoListActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 137
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/BusInfoListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$400(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/BusInfoListActivity$1$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/BusInfoListActivity$1$2;-><init>(Ltw/edu/kmu/act/BusInfoListActivity$1;)V

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/BusInfoListActivity$1$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/BusInfoListActivity$1$1;-><init>(Ltw/edu/kmu/act/BusInfoListActivity$1;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/BusInfoListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$200(Ltw/edu/kmu/act/BusInfoListActivity;)V

    .line 145
    invoke-static {}, Ltw/edu/kmu/act/BusInfoListActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_TIMER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$1;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$100(Ltw/edu/kmu/act/BusInfoListActivity;)V

    .line 176
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
