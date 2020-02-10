.class Ltw/edu/kmu/act/ARViewActivity$2;
.super Ljava/lang/Object;
.source "ARViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARViewActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARViewActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 206
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    const-class v1, Ltw/edu/kmu/act/ARListActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "serverDataList"

    .line 207
    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARViewActivity;->access$000(Ltw/edu/kmu/act/ARViewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "type"

    .line 208
    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARViewActivity;->access$100(Ltw/edu/kmu/act/ARViewActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/ARViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object p1, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    const v0, 0x7f010017

    const v1, 0x7f010018

    invoke-virtual {p1, v0, v1}, Ltw/edu/kmu/act/ARViewActivity;->overridePendingTransition(II)V

    .line 211
    iget-object p1, p0, Ltw/edu/kmu/act/ARViewActivity$2;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/ARViewActivity;->finish()V

    return-void
.end method
