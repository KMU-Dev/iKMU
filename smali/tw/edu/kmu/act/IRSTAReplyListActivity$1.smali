.class Ltw/edu/kmu/act/IRSTAReplyListActivity$1;
.super Ljava/lang/Object;
.source "IRSTAReplyListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSTAReplyListActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSTAReplyListActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;

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

    .line 76
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->access$100(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 77
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;

    const-class p4, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 79
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 80
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "className"

    .line 83
    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->access$200(Ltw/edu/kmu/act/IRSTAReplyListActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyListActivity$1;->this$0:Ltw/edu/kmu/act/IRSTAReplyListActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRSTAReplyListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
