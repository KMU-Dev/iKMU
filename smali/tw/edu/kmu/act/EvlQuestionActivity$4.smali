.class Ltw/edu/kmu/act/EvlQuestionActivity$4;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->initTeacherBtn()V
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

    .line 252
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 257
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const-class v1, Ltw/edu/kmu/act/EvlProgActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "progDataList"

    .line 258
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "norYn"

    .line 259
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chineseCo"

    .line 260
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chineseCo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$4;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
