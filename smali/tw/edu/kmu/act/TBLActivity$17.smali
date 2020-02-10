.class Ltw/edu/kmu/act/TBLActivity$17;
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

    .line 865
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$17;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$17;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 869
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$17;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLActivity;->access$700(Ltw/edu/kmu/act/TBLActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "edit1"

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 870
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 871
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    iget-object v3, p0, Ltw/edu/kmu/act/TBLActivity$17;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v3, 0x3

    .line 872
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "final"

    aput-object v4, v3, v2

    iget-object v2, p0, Ltw/edu/kmu/act/TBLActivity$17;->val$subQuOrder:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 874
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$17;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const-string v0, "\u672c\u984c\u672a\u4f5c\u7b54"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 875
    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 876
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
