.class Ltw/edu/kmu/act/TBLReadOnlyActivity$1;
.super Ljava/lang/Object;
.source "TBLReadOnlyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLReadOnlyActivity;->show99View()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLReadOnlyActivity;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$1;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 161
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$1;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    const-class v1, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgFileName"

    .line 162
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "header"

    const-string v1, ""

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$1;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
