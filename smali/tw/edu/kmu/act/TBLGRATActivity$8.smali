.class Ltw/edu/kmu/act/TBLGRATActivity$8;
.super Ljava/lang/Object;
.source "TBLGRATActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLGRATActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$subQuOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 514
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$subQuOrder:Ljava/lang/String;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 518
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-boolean p1, p1, Ltw/edu/kmu/act/TBLGRATActivity;->selCorrect:Z

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 520
    new-instance p1, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;

    iget-object v5, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p1, v5, v2}, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    .line 521
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "final"

    aput-object v2, v1, v4

    iget-object v2, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$subQuOrder:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 525
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$radioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    .line 528
    new-instance v5, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;

    iget-object v6, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {v5, v6, v2}, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    .line 529
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "final"

    aput-object v2, v1, v4

    iget-object v2, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->val$subQuOrder:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f08004f

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v5, v1}, Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 531
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$8;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const-string v0, "\u672c\u984c\u672a\u4f5c\u7b54"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 532
    invoke-virtual {p1, v0, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 533
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
