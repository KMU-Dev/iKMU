.class Ltw/edu/kmu/act/IRSActivity$14;
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

    .line 929
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$14;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 934
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$14;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$14;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "I don\u2019t understand this part."

    goto :goto_0

    :cond_0
    const-string v0, "\u8001\u5e2b,\u6211\u4e0d\u61c2\u9019\u90e8\u4efd\u7684\u5167\u5bb9!!"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
