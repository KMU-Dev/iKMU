.class Ltw/edu/kmu/act/NewsActivity$5;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/16 v0, 0x63

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$702(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 240
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1300(Ltw/edu/kmu/act/NewsActivity;)V

    .line 241
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$402(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 242
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1200(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f07013a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 243
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$900(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 244
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 245
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$5;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1100(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
