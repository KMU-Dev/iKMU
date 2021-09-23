.class Ltw/edu/kmu/act/EvlQuestionActivity$11;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->initViewPager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 666
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const/4 v0, 0x0

    .line 669
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 703
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Huh?"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 699
    :pswitch_0
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 695
    :pswitch_1
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 691
    :pswitch_2
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 687
    :pswitch_3
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 683
    :pswitch_4
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 679
    :pswitch_5
    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$11;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080165
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
