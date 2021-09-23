.class Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;
.super Ljava/lang/Object;
.source "IRSTAStuListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

.field final synthetic val$holder:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->val$holder:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

    iput p3, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->val$holder:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

    iget-object p1, p1, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->val$holder:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

    iget-object v0, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->val$position:I

    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    invoke-static {v0}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->access$100(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 110
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    invoke-static {p1}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->access$200(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;)Ltw/edu/kmu/act/IRS4TAActivity;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->scrollToEnd()V

    :cond_1
    return-void
.end method
