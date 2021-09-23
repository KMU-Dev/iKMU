.class Ltw/edu/kmu/act/EvlQuestionActivity$9;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->initViewPager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$9;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 470
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$9;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 471
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$9;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$600(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    :cond_0
    return-void
.end method
