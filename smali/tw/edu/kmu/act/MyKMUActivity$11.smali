.class Ltw/edu/kmu/act/MyKMUActivity$11;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showTBLSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 448
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 458
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "type"

    const-string p3, "act"

    .line 459
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 462
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "type"

    const-string p3, "act"

    .line 463
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 466
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "type"

    const-string p3, "act"

    .line 467
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    :cond_2
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$11;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
