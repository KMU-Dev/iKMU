.class Ltw/edu/kmu/act/EvlQuestionActivity$14;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->addDots()V
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

    .line 917
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$14;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 924
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$14;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->selectDot(I)V

    return-void
.end method
