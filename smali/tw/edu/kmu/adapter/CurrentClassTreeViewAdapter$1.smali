.class Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;
.super Ljava/lang/Object;
.source "CurrentClassTreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    iput p2, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    iget v1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/TreeElement;

    .line 110
    iget-object v1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    invoke-virtual {v1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    iget-object v2, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    invoke-virtual {v2}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;

    .line 117
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->isHasChildren()Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object v3, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassRoom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getTeacherNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getSeqno()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->access$000(Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->isExpanded()Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {v0, v3}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget v2, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->val$position:I

    add-int/2addr v2, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 128
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltw/edu/kmu/view/TreeElement;

    invoke-virtual {v4}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    invoke-virtual {p1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 137
    :cond_3
    invoke-virtual {v0, v4}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 141
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

    .line 144
    invoke-virtual {v2}, Ltw/edu/kmu/view/TreeElement;->getParendId()I

    move-result v5

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 145
    invoke-virtual {v2, v3}, Ltw/edu/kmu/view/TreeElement;->setExpanded(Z)V

    .line 146
    iget v5, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->val$position:I

    add-int/2addr v5, v4

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 150
    :cond_5
    iget-object p1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;->this$0:Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    invoke-virtual {p1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
