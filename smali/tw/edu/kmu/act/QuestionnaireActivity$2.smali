.class Ltw/edu/kmu/act/QuestionnaireActivity$2;
.super Landroid/os/Handler;
.source "QuestionnaireActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/QuestionnaireActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/QuestionnaireActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/QuestionnaireActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$2;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 134
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity$2;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/QuestionnaireActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity$2;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/QuestionnaireActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$2;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/QuestionnaireActivity$2$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/QuestionnaireActivity$2$2;-><init>(Ltw/edu/kmu/act/QuestionnaireActivity$2;)V

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/QuestionnaireActivity$2$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/QuestionnaireActivity$2$1;-><init>(Ltw/edu/kmu/act/QuestionnaireActivity$2;)V

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/QuestionnaireActivity$2;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$400(Ltw/edu/kmu/act/QuestionnaireActivity;)V

    .line 161
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
