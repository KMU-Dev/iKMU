.class Ltw/edu/kmu/act/TBLGRATActivity$14;
.super Ljava/lang/Object;
.source "TBLGRATActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLGRATActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V
    .locals 0

    .line 865
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$14;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLGRATActivity$14;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 868
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$14;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const-class v1, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgFileName"

    .line 869
    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$14;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "header"

    const-string v1, ""

    .line 870
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$14;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TBLGRATActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
