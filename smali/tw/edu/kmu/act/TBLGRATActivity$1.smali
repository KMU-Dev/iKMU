.class Ltw/edu/kmu/act/TBLGRATActivity$1;
.super Landroid/os/Handler;
.source "TBLGRATActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLGRATActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 116
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Time is up"

    goto :goto_0

    :cond_0
    const-string v0, "\u6642\u9593\u5230\u4e86"

    .line 117
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_1

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/TBLGRATActivity$1$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/TBLGRATActivity$1$1;-><init>(Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$100(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLGRATActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$200(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "00:00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 125
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$1;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLGRATActivity;->access$200(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method
