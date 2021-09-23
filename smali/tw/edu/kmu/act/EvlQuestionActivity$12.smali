.class Ltw/edu/kmu/act/EvlQuestionActivity$12;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$compView:Landroid/view/View;

.field final synthetic val$edit9:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .line 760
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->val$compView:Landroid/view/View;

    iput-object p3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->val$edit9:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 763
    check-cast p1, Landroid/widget/CheckBox;

    .line 764
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick idx is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " text is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  v2 isChecked is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->val$compView:Landroid/view/View;

    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 768
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    .line 769
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_2

    .line 772
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cb_Content2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v4}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 773
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->val$compView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 775
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 776
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->val$edit9:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 780
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$12;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v1, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "TO report a sexual assault incident, please call 07-3220809"

    goto :goto_1

    :cond_1
    const-string v1, "\u5982\u6709\u6027\u5e73\u4e8b\u4ef6\u9700\u5177\u540d\u901a\u5831\u8acb\u64a5\u625307\u20103220809"

    :goto_1
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x11

    .line 781
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 782
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
