.class Ltw/edu/kmu/act/ENewsAllActivity$2;
.super Landroid/os/Handler;
.source "ENewsAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ENewsAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ENewsAllActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ENewsAllActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ltw/edu/kmu/act/ENewsAllActivity$2;->this$0:Ltw/edu/kmu/act/ENewsAllActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 109
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity$2;->this$0:Ltw/edu/kmu/act/ENewsAllActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/ENewsAllActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/ENewsAllActivity$2;->this$0:Ltw/edu/kmu/act/ENewsAllActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/ENewsAllActivity$2$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ENewsAllActivity$2$2;-><init>(Ltw/edu/kmu/act/ENewsAllActivity$2;)V

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/ENewsAllActivity$2$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ENewsAllActivity$2$1;-><init>(Ltw/edu/kmu/act/ENewsAllActivity$2;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/ENewsAllActivity$2;->this$0:Ltw/edu/kmu/act/ENewsAllActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ENewsAllActivity;->access$200(Ltw/edu/kmu/act/ENewsAllActivity;)V

    .line 133
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method