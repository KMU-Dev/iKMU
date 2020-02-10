.class Ltw/edu/kmu/act/AuthorizationSeatActivity$4;
.super Landroid/os/Handler;
.source "AuthorizationSeatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/AuthorizationSeatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 317
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 319
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 322
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 342
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

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 343
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

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Retry"

    goto :goto_2

    :cond_3
    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    :goto_2
    new-instance v2, Ltw/edu/kmu/act/AuthorizationSeatActivity$4$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$4$2;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Cancel"

    goto :goto_3

    :cond_4
    const-string v1, "\u53d6\u6d88"

    :goto_3
    new-instance v2, Ltw/edu/kmu/act/AuthorizationSeatActivity$4$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$4$1;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 361
    :cond_5
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$1100(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    .line 367
    :goto_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
