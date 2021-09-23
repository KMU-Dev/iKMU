.class Ltw/edu/kmu/act/EvlTAClassActivity$5;
.super Ljava/lang/Object;
.source "EvlTAClassActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlTAClassActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlTAClassActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlTAClassActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

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

    .line 219
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$200(Ltw/edu/kmu/act/EvlTAClassActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "teacher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$500(Ltw/edu/kmu/act/EvlTAClassActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 221
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    const-class p4, Ltw/edu/kmu/act/EvlTAActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 223
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 224
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "type"

    .line 226
    iget-object p3, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$200(Ltw/edu/kmu/act/EvlTAClassActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/EvlTAClassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 231
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$500(Ltw/edu/kmu/act/EvlTAClassActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 232
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    const-class p4, Ltw/edu/kmu/act/EvlTACourseActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 234
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 235
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p1, "type"

    .line 237
    iget-object p3, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/EvlTAClassActivity;->access$200(Ltw/edu/kmu/act/EvlTAClassActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlTAClassActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/EvlTAClassActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
