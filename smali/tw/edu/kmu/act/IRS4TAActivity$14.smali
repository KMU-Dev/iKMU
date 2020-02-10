.class Ltw/edu/kmu/act/IRS4TAActivity$14;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->showExPoolDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 958
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->val$queryDialog:Landroid/app/AlertDialog;

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

    .line 963
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string p4, "poolId"

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->access$502(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 966
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;

    iget-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    const/4 p2, 0x2

    .line 967
    new-array p2, p2, [Ljava/lang/String;

    iget-object p4, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/IRS4TAActivity;->access$500(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    iget-object p4, p0, Ltw/edu/kmu/act/IRS4TAActivity$14;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string p4, "title1"

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
