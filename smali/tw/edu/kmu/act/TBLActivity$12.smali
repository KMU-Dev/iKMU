.class Ltw/edu/kmu/act/TBLActivity$12;
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

.field final synthetic val$optionList:Lorg/json/JSONArray;

.field final synthetic val$subQuOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .line 645
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$12;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$12;->val$optionList:Lorg/json/JSONArray;

    iput-object p3, p0, Ltw/edu/kmu/act/TBLActivity$12;->val$subQuOrder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string p1, ""

    const/4 v0, 0x0

    move-object v1, p1

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 652
    :cond_0
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/TBLActivity$12;->val$optionList:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    iget-object v4, p0, Ltw/edu/kmu/act/TBLActivity$12;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/TBLActivity;->access$700(Ltw/edu/kmu/act/TBLActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f08004f

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 658
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    .line 662
    :cond_2
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBox ansString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 663
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 664
    new-instance p1, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    iget-object v3, p0, Ltw/edu/kmu/act/TBLActivity$12;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v3, 0x3

    .line 665
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "final"

    aput-object v4, v3, v0

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$12;->val$subQuOrder:Ljava/lang/String;

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-virtual {p1, v3}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 667
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$12;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const-string v1, "\u672c\u984c\u672a\u4f5c\u7b54"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x11

    .line 668
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 669
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
