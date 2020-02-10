.class Ltw/edu/kmu/act/IRS4TAActivity$18;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->getPoolDataView(Ljava/util/HashMap;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$18;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRS4TAActivity$18;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1363
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$18;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const-class v1, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgFileName"

    .line 1364
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$18;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "header"

    const-string v1, ""

    .line 1365
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$18;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
