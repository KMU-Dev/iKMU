.class Ltw/edu/kmu/act/EvlQuestionActivity$1;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->initTypeBtn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/widget/ScrollView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$100(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 190
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$200(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "#00FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 191
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const-string v0, "class"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$302(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->val$scrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$400(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$1;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
