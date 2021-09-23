.class Ltw/edu/kmu/act/TBLMyGroupActivity$1;
.super Landroid/os/Handler;
.source "TBLMyGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLMyGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLMyGroupActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 67
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLMyGroupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    const v2, 0x7f0c00f8

    .line 75
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    const v2, 0x7f0c00f6

    .line 76
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    const v2, 0x7f0c00f7

    .line 77
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLMyGroupActivity$1$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLMyGroupActivity$1$2;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    const v2, 0x7f0c00f5

    .line 84
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/TBLMyGroupActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLMyGroupActivity$1$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLMyGroupActivity$1$1;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLMyGroupActivity;->access$100(Ltw/edu/kmu/act/TBLMyGroupActivity;)V

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
