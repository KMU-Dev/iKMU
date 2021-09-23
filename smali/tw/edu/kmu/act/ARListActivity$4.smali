.class Ltw/edu/kmu/act/ARListActivity$4;
.super Ljava/lang/Object;
.source "ARListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARListActivity;->initFunctionBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARListActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARListActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 336
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    const-class v1, Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "serverDataList"

    .line 337
    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARListActivity;->access$600(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "type"

    .line 338
    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARListActivity;->access$100(Ltw/edu/kmu/act/ARListActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/ARListActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    const v0, 0x7f010017

    const v1, 0x7f010018

    invoke-virtual {p1, v0, v1}, Ltw/edu/kmu/act/ARListActivity;->overridePendingTransition(II)V

    .line 341
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$4;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/ARListActivity;->finish()V

    return-void
.end method
