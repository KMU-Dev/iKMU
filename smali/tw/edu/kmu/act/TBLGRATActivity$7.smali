.class Ltw/edu/kmu/act/TBLGRATActivity$7;
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
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 507
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 508
    new-instance v0, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    const/4 v1, 0x2

    .line 509
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ltw/edu/kmu/act/TBLGRATActivity$7;->val$subQuOrder:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-eqz p1, :cond_0

    const v2, 0x7f08004f

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
