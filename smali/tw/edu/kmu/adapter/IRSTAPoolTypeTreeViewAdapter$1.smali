.class Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;
.super Ljava/lang/Object;
.source "IRSTAPoolTypeTreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    iput p2, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 103
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    iget v1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/TreeElement;

    .line 105
    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    iget-object v2, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    invoke-virtual {v2}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;

    .line 112
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->isHasChildren()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v0

    invoke-static {p1, v1, v0}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->access$000(Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;Ljava/lang/String;I)V

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->isExpanded()Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {v0, v3}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget v2, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->val$position:I

    add-int/2addr v2, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 123
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltw/edu/kmu/view/TreeElement;

    invoke-virtual {v4}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 130
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    invoke-virtual {p1}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {v0, v4}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltw/edu/kmu/view/TreeElement;

    .line 139
    invoke-virtual {v2}, Ltw/edu/kmu/view/TreeElement;->getParendId()I

    move-result v5

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 140
    invoke-virtual {v2, v3}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 141
    iget v5, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->val$position:I

    add-int/2addr v5, v4

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    :cond_5
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    invoke-virtual {p1}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
