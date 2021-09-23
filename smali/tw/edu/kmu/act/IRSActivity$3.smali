.class Ltw/edu/kmu/act/IRSActivity$3;
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

    .line 551
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$3;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 556
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$3;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$3;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Submit"

    goto :goto_0

    :cond_0
    const-string v0, "\u78ba\u5b9a\u9001\u51fa"

    .line 557
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$3;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Ok"

    goto :goto_1

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$3$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$3$2;-><init>(Ltw/edu/kmu/act/IRSActivity$3;)V

    .line 558
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$3;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Cancel"

    goto :goto_2

    :cond_2
    const-string v0, "\u53d6\u6d88"

    :goto_2
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$3$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$3$1;-><init>(Ltw/edu/kmu/act/IRSActivity$3;)V

    .line 565
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 571
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
