.class Ltw/edu/kmu/act/TBLActivity$14;
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

.field final synthetic val$subQuOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V
    .locals 0

    .line 830
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$14;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$14;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 835
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$14;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLActivity;->access$700(Ltw/edu/kmu/act/TBLActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "edit1"

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 836
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$14;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v1, 0x3

    .line 837
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pre"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ltw/edu/kmu/act/TBLActivity$14;->val$subQuOrder:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
