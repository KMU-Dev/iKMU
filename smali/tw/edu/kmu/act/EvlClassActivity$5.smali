.class Ltw/edu/kmu/act/EvlClassActivity$5;
.super Ljava/lang/Object;
.source "EvlClassActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlClassActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlClassActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlClassActivity;)V
    .locals 0

    .line 224
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

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

    .line 230
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlClassActivity;->access$600(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "Y"

    const-string p3, "netVtlt"

    .line 231
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 233
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object p2, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-boolean p2, p2, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz p2, :cond_0

    const-string p2, "It\'s the other questionnaire"

    goto :goto_0

    :cond_0
    const-string p2, "\u672c\u8ab2\u7a0b\u70ba\u5176\u4ed6\u8a55\u91cf"

    :goto_0
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 p3, 0x0

    .line 234
    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 235
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string p2, "class"

    .line 240
    iget-object p3, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/EvlClassActivity;->access$200(Ltw/edu/kmu/act/EvlClassActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Y"

    const-string p3, "qfcFilled"

    .line 242
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_2
    const-string p2, "0"

    const-string p3, "cntY"

    .line 248
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "0"

    const-string p3, "cntN"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 253
    :cond_3
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    const-class p4, Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 255
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 256
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string p1, "type"

    .line 259
    iget-object p3, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/EvlClassActivity;->access$200(Ltw/edu/kmu/act/EvlClassActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$5;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/EvlClassActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
