.class Ltw/edu/kmu/act/TBLGRATActivity$6;
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

    .line 488
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 493
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->val$radioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 497
    new-instance p1, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATNextQu;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATNextQu;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    const/4 v0, 0x2

    .line 498
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "next"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$6;->val$subQuOrder:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATNextQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
