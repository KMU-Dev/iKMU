.class Ltw/edu/kmu/act/IRS4TAActivity$12;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->scrollToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$adapter:Landroid/widget/SimpleAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/view/View;Landroid/widget/SimpleAdapter;)V
    .locals 0

    .line 726
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$12;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$12;->val$view:Landroid/view/View;

    iput-object p3, p0, Ltw/edu/kmu/act/IRS4TAActivity$12;->val$adapter:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 730
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$12;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$12;->val$adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
