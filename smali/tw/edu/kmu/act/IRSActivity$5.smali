.class Ltw/edu/kmu/act/IRSActivity$5;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->initEditView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 598
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$5;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 603
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$5;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 604
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$5;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$2100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$5;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$2100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_0
    return-void
.end method
