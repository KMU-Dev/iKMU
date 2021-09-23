.class Ltw/edu/kmu/act/EvlQuestionActivity$7;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->showActionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 358
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->val$queryDialog:Landroid/app/AlertDialog;

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

    .line 364
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "canEvl"

    .line 365
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1, p3}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1302(Ltw/edu/kmu/act/EvlQuestionActivity;I)I

    .line 367
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {p1, p3}, Ltw/edu/kmu/act/EvlQuestionActivity;->initViewPager(I)V

    goto :goto_1

    .line 369
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean p2, p2, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz p2, :cond_1

    const-string p2, "Cannot be evaluated now"

    goto :goto_0

    :cond_1
    const-string p2, "\u76ee\u524d\u7121\u6cd5\u8a55\u91cf"

    :goto_0
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 p3, 0x0

    .line 370
    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 371
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 374
    :goto_1
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$7;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
