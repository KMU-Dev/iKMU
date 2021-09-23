.class Ltw/edu/kmu/act/TBLActivity$13;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V
    .locals 0

    .line 722
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$13;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLActivity$13;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 725
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$13;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLActivity;->access$302(Ltw/edu/kmu/act/TBLActivity;Z)Z

    .line 726
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$13;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const-class v1, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgFileName"

    .line 727
    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$13;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "header"

    const-string v1, ""

    .line 728
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "inSampleSize"

    const-string v1, "1"

    .line 729
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$13;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TBLActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
