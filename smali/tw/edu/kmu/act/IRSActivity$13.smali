.class Ltw/edu/kmu/act/IRSActivity$13;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->initBtn()V
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

    .line 864
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$13;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 869
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$13;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$13;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "The pace is too fast."

    goto :goto_0

    :cond_0
    const-string v0, "\u8001\u5e2b,\u60a8\u7684\u8b1b\u8ab2\u901f\u5ea6\u592a\u5feb\u4e86!!"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
