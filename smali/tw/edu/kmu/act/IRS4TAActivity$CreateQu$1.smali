.class Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;)V
    .locals 0

    .line 1532
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;->this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1537
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;->this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-class v1, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "qutype"

    .line 1538
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;->this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v1, v1, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "questionId"

    .line 1539
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;->this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->access$3300(Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;->this$1:Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
