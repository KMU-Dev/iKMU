.class Ltw/edu/kmu/act/MyKMUActivity$16;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->initWacTaBtn()V
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

    .line 599
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 608
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-nez p1, :cond_0

    .line 610
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 611
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 615
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v0, "\u5b78\u751f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "\u6559\u8077\u54e1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 630
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_2

    const-string v1, "Alert"

    goto :goto_0

    :cond_2
    const-string v1, "\u8b66\u793a\u8a0a\u606f"

    .line 631
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 632
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Unauthorized"

    goto :goto_1

    :cond_3
    const-string v0, "\u60a8\u7121\u6b0a\u9650"

    .line 633
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v0, :cond_4

    const-string v0, "OK"

    goto :goto_2

    :cond_4
    const-string v0, "\u78ba\u5b9a"

    :goto_2
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$16$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$16$1;-><init>(Ltw/edu/kmu/act/MyKMUActivity$16;)V

    .line 634
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 642
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 618
    :cond_5
    :goto_3
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "\u5b78\u751f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 620
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$300(Ltw/edu/kmu/act/MyKMUActivity;)V

    goto :goto_4

    .line 624
    :cond_6
    new-instance p1, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$16;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    const/4 v1, 0x1

    .line 625
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_4
    return-void
.end method
