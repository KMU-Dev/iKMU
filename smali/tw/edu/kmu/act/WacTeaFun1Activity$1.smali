.class Ltw/edu/kmu/act/WacTeaFun1Activity$1;
.super Landroid/os/Handler;
.source "WacTeaFun1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/WacTeaFun1Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun1Activity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 59
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun1Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun1Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    const v2, 0x7f0c00f8

    .line 67
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1Activity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    const v2, 0x7f0c00f6

    .line 68
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1Activity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    const v2, 0x7f0c00f7

    .line 69
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1Activity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/WacTeaFun1Activity$1$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/WacTeaFun1Activity$1$2;-><init>(Ltw/edu/kmu/act/WacTeaFun1Activity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    const v2, 0x7f0c00f5

    .line 77
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1Activity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/WacTeaFun1Activity$1$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/WacTeaFun1Activity$1$1;-><init>(Ltw/edu/kmu/act/WacTeaFun1Activity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun1Activity$1;->this$0:Ltw/edu/kmu/act/WacTeaFun1Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun1Activity;->access$100(Ltw/edu/kmu/act/WacTeaFun1Activity;)V

    .line 86
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
