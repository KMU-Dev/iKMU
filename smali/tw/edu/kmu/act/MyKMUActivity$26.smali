.class Ltw/edu/kmu/act/MyKMUActivity$26;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showSwitchDialog()V
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

    .line 1090
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->val$queryDialog:Landroid/app/AlertDialog;

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

    .line 1100
    new-instance p1, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    const/4 p2, 0x1

    .line 1101
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, ""

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1103
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1104
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    .line 1106
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$26;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
