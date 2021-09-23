.class Ltw/edu/kmu/act/MyKMUActivity$21;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->initWacTaBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 718
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$21;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 723
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$21;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class v1, Ltw/edu/kmu/act/WacTeaFun5Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "title"

    .line 724
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$21;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "idx"

    const-string v1, "4"

    .line 725
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$21;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
