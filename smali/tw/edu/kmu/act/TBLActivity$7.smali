.class Ltw/edu/kmu/act/TBLActivity$7;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$subQuOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$7;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLActivity$7;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 393
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 396
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    iget-object v3, p0, Ltw/edu/kmu/act/TBLActivity$7;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v3, 0x3

    .line 397
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "final"

    aput-object v4, v3, v1

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$7;->val$subQuOrder:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const v1, 0x7f08004f

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$7;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const-string v2, "\u672c\u984c\u672a\u4f5c\u7b54"

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 400
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 401
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
