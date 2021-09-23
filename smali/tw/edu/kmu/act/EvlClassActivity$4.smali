.class Ltw/edu/kmu/act/EvlClassActivity$4;
.super Landroid/os/Handler;
.source "EvlClassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlClassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlClassActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlClassActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 167
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const v2, 0x7f0c00f8

    .line 175
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/EvlClassActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const v2, 0x7f0c00f6

    .line 176
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/EvlClassActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const v2, 0x7f0c00f7

    .line 177
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/EvlClassActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/EvlClassActivity$4$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/EvlClassActivity$4$2;-><init>(Ltw/edu/kmu/act/EvlClassActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const v2, 0x7f0c00f5

    .line 185
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/EvlClassActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/EvlClassActivity$4$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/EvlClassActivity$4$1;-><init>(Ltw/edu/kmu/act/EvlClassActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$4;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlClassActivity;->access$400(Ltw/edu/kmu/act/EvlClassActivity;)V

    .line 194
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
