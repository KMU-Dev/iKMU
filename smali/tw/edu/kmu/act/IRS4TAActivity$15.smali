.class Ltw/edu/kmu/act/IRS4TAActivity$15;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

.field final synthetic val$questionMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;Ljava/util/HashMap;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    iput-object p3, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->val$questionMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1148
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->val$alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;->dismiss()V

    .line 1151
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1152
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->val$questionMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$3100(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/HashMap;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1153
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$15;->val$questionMap:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$402(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1155
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form1 addView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
