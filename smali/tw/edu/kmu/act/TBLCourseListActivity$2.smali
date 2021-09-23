.class Ltw/edu/kmu/act/TBLCourseListActivity$2;
.super Ljava/lang/Object;
.source "TBLCourseListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLCourseListActivity;->showSwitchDialog(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

.field final synthetic val$data:Ljava/util/HashMap;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLCourseListActivity;Ljava/util/HashMap;Landroid/app/AlertDialog;)V
    .locals 0

    .line 89
    iput-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$queryDialog:Landroid/app/AlertDialog;

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

    if-nez p3, :cond_1

    .line 99
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    const-class p3, Ltw/edu/kmu/act/TBLTpListActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 101
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 102
    iget-object p4, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 105
    :cond_0
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_3

    .line 107
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    const-class p3, Ltw/edu/kmu/act/TBLMyGroupActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 110
    iget-object p4, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 113
    :cond_2
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    const/4 p1, 0x2

    if-ne p3, p1, :cond_5

    .line 115
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    const-class p3, Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 117
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 118
    iget-object p4, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$data:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 121
    :cond_4
    iget-object p2, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->this$0:Ltw/edu/kmu/act/TBLCourseListActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/TBLCourseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    :cond_5
    :goto_3
    iget-object p1, p0, Ltw/edu/kmu/act/TBLCourseListActivity$2;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
