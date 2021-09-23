.class Ltw/edu/kmu/act/IRS4TAActivity$4;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 398
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 402
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$900(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x2

    const/high16 v4, -0x1000000

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 429
    :pswitch_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string v5, "99"

    invoke-static {p1, v5}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$502(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1300(Ltw/edu/kmu/act/IRS4TAActivity;)V

    .line 432
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 433
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "\u8a66\u5377"

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string v5, "2"

    invoke-static {p1, v5}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1200(Ltw/edu/kmu/act/IRS4TAActivity;)V

    .line 421
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 422
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "\u984c\u5eab\u9078\u984c"

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$402(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 407
    :pswitch_2
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-string v1, "1"

    invoke-static {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1000(Ltw/edu/kmu/act/IRS4TAActivity;)Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1000(Ltw/edu/kmu/act/IRS4TAActivity;)Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;->dismiss()V

    .line 411
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 412
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "60\u79d2\u5feb\u554f\u5feb\u7b54"

    .line 414
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$4;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08008b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
