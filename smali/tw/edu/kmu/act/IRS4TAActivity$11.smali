.class Ltw/edu/kmu/act/IRS4TAActivity$11;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->showSeqListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/widget/ListView;)V
    .locals 0

    .line 706
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$11;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$11;->val$lv:Landroid/widget/ListView;

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

    .line 711
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$11;->val$lv:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-void
.end method
