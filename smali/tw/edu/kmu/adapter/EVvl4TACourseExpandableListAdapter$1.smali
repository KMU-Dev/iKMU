.class Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "EVvl4TACourseExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

.field final synthetic val$groupData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;Ljava/util/HashMap;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->this$0:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->val$groupData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    invoke-static {}, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeaderRightIcon click:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->this$0:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    invoke-static {v0}, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;->access$100(Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    iget-object v0, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->val$groupData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    iget-object v2, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->val$groupData:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter$1;->this$0:Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;

    invoke-static {v0}, Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;->access$100(Ltw/edu/kmu/adapter/EVvl4TACourseExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method