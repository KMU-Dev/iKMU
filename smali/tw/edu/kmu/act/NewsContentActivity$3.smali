.class Ltw/edu/kmu/act/NewsContentActivity$3;
.super Ljava/lang/Object;
.source "NewsContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsContentActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsContentActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsContentActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$300(Ltw/edu/kmu/act/NewsContentActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$400(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/NewsContentActivity;->saveNewsData()V

    .line 218
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$400(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$400(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsContentActivity;->access$302(Ltw/edu/kmu/act/NewsContentActivity;Z)Z

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsContentActivity;->access$302(Ltw/edu/kmu/act/NewsContentActivity;Z)Z

    .line 225
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsContentActivity;->access$400(Ltw/edu/kmu/act/NewsContentActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "\u6536\u85cf"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/NewsContentActivity$3;->this$0:Ltw/edu/kmu/act/NewsContentActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsContentActivity;->access$500(Ltw/edu/kmu/act/NewsContentActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/NewsContentActivity;->removeNewsDataBySerialNo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
